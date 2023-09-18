package wallet.core.jni.proto;

import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.Internal;
/* loaded from: classes5.dex */
public final class Common {
    public static void registerAllExtensions(ExtensionRegistryLite registry) {
    }

    private Common() {
    }

    /* loaded from: classes5.dex */
    public enum SigningError implements Internal.EnumLite {
        OK(0),
        Error_general(1),
        Error_internal(2),
        Error_low_balance(3),
        Error_zero_amount_requested(4),
        Error_missing_private_key(5),
        Error_invalid_private_key(15),
        Error_invalid_address(16),
        Error_invalid_utxo(17),
        Error_invalid_utxo_amount(18),
        Error_wrong_fee(6),
        Error_signing(7),
        Error_tx_too_big(8),
        Error_missing_input_utxos(9),
        Error_not_enough_utxos(10),
        Error_script_redeem(11),
        Error_script_output(12),
        Error_script_witness_program(13),
        Error_invalid_memo(14),
        Error_input_parse(19),
        Error_no_support_n2n(20),
        Error_signatures_count(21),
        Error_invalid_params(22),
        Error_invalid_requested_token_amount(23),
        UNRECOGNIZED(-1);
        
        public static final int Error_general_VALUE = 1;
        public static final int Error_input_parse_VALUE = 19;
        public static final int Error_internal_VALUE = 2;
        public static final int Error_invalid_address_VALUE = 16;
        public static final int Error_invalid_memo_VALUE = 14;
        public static final int Error_invalid_params_VALUE = 22;
        public static final int Error_invalid_private_key_VALUE = 15;
        public static final int Error_invalid_requested_token_amount_VALUE = 23;
        public static final int Error_invalid_utxo_VALUE = 17;
        public static final int Error_invalid_utxo_amount_VALUE = 18;
        public static final int Error_low_balance_VALUE = 3;
        public static final int Error_missing_input_utxos_VALUE = 9;
        public static final int Error_missing_private_key_VALUE = 5;
        public static final int Error_no_support_n2n_VALUE = 20;
        public static final int Error_not_enough_utxos_VALUE = 10;
        public static final int Error_script_output_VALUE = 12;
        public static final int Error_script_redeem_VALUE = 11;
        public static final int Error_script_witness_program_VALUE = 13;
        public static final int Error_signatures_count_VALUE = 21;
        public static final int Error_signing_VALUE = 7;
        public static final int Error_tx_too_big_VALUE = 8;
        public static final int Error_wrong_fee_VALUE = 6;
        public static final int Error_zero_amount_requested_VALUE = 4;
        public static final int OK_VALUE = 0;
        private static final Internal.EnumLiteMap<SigningError> internalValueMap = new Internal.EnumLiteMap<SigningError>() { // from class: wallet.core.jni.proto.Common.SigningError.1
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public SigningError findValueByNumber(int number) {
                return SigningError.forNumber(number);
            }
        };
        private final int value;

        @Override // com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            if (this == UNRECOGNIZED) {
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }
            return this.value;
        }

        @Deprecated
        public static SigningError valueOf(int value) {
            return forNumber(value);
        }

        public static SigningError forNumber(int value) {
            switch (value) {
                case 0:
                    return OK;
                case 1:
                    return Error_general;
                case 2:
                    return Error_internal;
                case 3:
                    return Error_low_balance;
                case 4:
                    return Error_zero_amount_requested;
                case 5:
                    return Error_missing_private_key;
                case 6:
                    return Error_wrong_fee;
                case 7:
                    return Error_signing;
                case 8:
                    return Error_tx_too_big;
                case 9:
                    return Error_missing_input_utxos;
                case 10:
                    return Error_not_enough_utxos;
                case 11:
                    return Error_script_redeem;
                case 12:
                    return Error_script_output;
                case 13:
                    return Error_script_witness_program;
                case 14:
                    return Error_invalid_memo;
                case 15:
                    return Error_invalid_private_key;
                case 16:
                    return Error_invalid_address;
                case 17:
                    return Error_invalid_utxo;
                case 18:
                    return Error_invalid_utxo_amount;
                case 19:
                    return Error_input_parse;
                case 20:
                    return Error_no_support_n2n;
                case 21:
                    return Error_signatures_count;
                case 22:
                    return Error_invalid_params;
                case 23:
                    return Error_invalid_requested_token_amount;
                default:
                    return null;
            }
        }

        public static Internal.EnumLiteMap<SigningError> internalGetValueMap() {
            return internalValueMap;
        }

        public static Internal.EnumVerifier internalGetVerifier() {
            return SigningErrorVerifier.INSTANCE;
        }

        /* loaded from: classes5.dex */
        private static final class SigningErrorVerifier implements Internal.EnumVerifier {
            static final Internal.EnumVerifier INSTANCE = new SigningErrorVerifier();

            private SigningErrorVerifier() {
            }

            @Override // com.google.protobuf.Internal.EnumVerifier
            public boolean isInRange(int number) {
                return SigningError.forNumber(number) != null;
            }
        }

        SigningError(int value) {
            this.value = value;
        }
    }
}
