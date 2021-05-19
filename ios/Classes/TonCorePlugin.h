#import <Flutter/Flutter.h>

@interface TonCorePlugin : NSObject<FlutterPlugin>
@end

#define WORD_COUNT 12

#define DICTIONARY 1

#define RETRIES 5

#define TIMEOUT 60000

#define GROW_FACTOR 1.3

typedef struct NativeResponse {
  int status_code;
  char *payload;
} NativeResponse;

struct NativeResponse get_account(int wc, char *address);

struct NativeResponse get_transactions(int wc,
                                       char *address,
                                       unsigned long long last_transaction_lt,
                                       unsigned int limit);

struct NativeResponse generate_message(int contract_type,
                                       int wc,
                                       unsigned int lifetime,
                                       char *address,
                                       char *public_key,
                                       char *private_key,
                                       char *method,
                                       char *params);

struct NativeResponse estimate_fees(int contract_type, int wc, char *message);

struct NativeResponse send_message(int contract_type, int wc, char *message);

struct NativeResponse generate_mnemonic(void);

struct NativeResponse generate_keypair_from_mnemonic(char *mnemonic);

struct NativeResponse generate_deploy_message(int contract_type,
                                              int wc,
                                              char *address,
                                              char *public_key,
                                              char *private_key,
                                              char *params);

void cstring_free(char *str);

struct NativeResponse generate_address(int contract_type,
                                       int wc,
                                       char *public_key,
                                       char *initial_data);
