package wallet.core.jni.proto;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.MessageLite;
import com.google.protobuf.MessageLiteOrBuilder;
import com.google.protobuf.Parser;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;
/* loaded from: classes7.dex */
public final class NEAR {

    /* loaded from: classes7.dex */
    public interface AccessKeyOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        FullAccessPermission getFullAccess();

        FunctionCallPermission getFunctionCall();

        long getNonce();

        AccessKey.PermissionCase getPermissionCase();

        boolean hasFullAccess();

        boolean hasFunctionCall();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface ActionOrBuilder extends MessageLiteOrBuilder {
        AddKey getAddKey();

        CreateAccount getCreateAccount();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        DeleteAccount getDeleteAccount();

        DeleteKey getDeleteKey();

        DeployContract getDeployContract();

        FunctionCall getFunctionCall();

        Action.PayloadCase getPayloadCase();

        Stake getStake();

        Transfer getTransfer();

        boolean hasAddKey();

        boolean hasCreateAccount();

        boolean hasDeleteAccount();

        boolean hasDeleteKey();

        boolean hasDeployContract();

        boolean hasFunctionCall();

        boolean hasStake();

        boolean hasTransfer();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface AddKeyOrBuilder extends MessageLiteOrBuilder {
        AccessKey getAccessKey();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        PublicKey getPublicKey();

        boolean hasAccessKey();

        boolean hasPublicKey();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface CreateAccountOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface DeleteAccountOrBuilder extends MessageLiteOrBuilder {
        String getBeneficiaryId();

        ByteString getBeneficiaryIdBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface DeleteKeyOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        PublicKey getPublicKey();

        boolean hasPublicKey();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface DeployContractOrBuilder extends MessageLiteOrBuilder {
        ByteString getCode();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface FullAccessPermissionOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface FunctionCallOrBuilder extends MessageLiteOrBuilder {
        ByteString getArgs();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getDeposit();

        long getGas();

        String getMethodName();

        ByteString getMethodNameBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface FunctionCallPermissionOrBuilder extends MessageLiteOrBuilder {
        ByteString getAllowance();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getMethodNames(int index);

        ByteString getMethodNamesBytes(int index);

        int getMethodNamesCount();

        List<String> getMethodNamesList();

        String getReceiverId();

        ByteString getReceiverIdBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface PublicKeyOrBuilder extends MessageLiteOrBuilder {
        ByteString getData();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        int getKeyType();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface SigningInputOrBuilder extends MessageLiteOrBuilder {
        Action getActions(int index);

        int getActionsCount();

        List<Action> getActionsList();

        ByteString getBlockHash();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        long getNonce();

        ByteString getPrivateKey();

        String getReceiverId();

        ByteString getReceiverIdBytes();

        String getSignerId();

        ByteString getSignerIdBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface SigningOutputOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getHash();

        ByteString getSignedTransaction();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface StakeOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        PublicKey getPublicKey();

        ByteString getStake();

        boolean hasPublicKey();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface TransferOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getDeposit();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static void registerAllExtensions(ExtensionRegistryLite registry) {
    }

    private NEAR() {
    }

    /* loaded from: classes7.dex */
    public static final class PublicKey extends GeneratedMessageLite<PublicKey, Builder> implements PublicKeyOrBuilder {
        public static final int DATA_FIELD_NUMBER = 2;
        private static final PublicKey DEFAULT_INSTANCE;
        public static final int KEY_TYPE_FIELD_NUMBER = 1;
        private static volatile Parser<PublicKey> PARSER;
        private ByteString data_ = ByteString.EMPTY;
        private int keyType_;

        private PublicKey() {
        }

        @Override // wallet.core.jni.proto.NEAR.PublicKeyOrBuilder
        public int getKeyType() {
            return this.keyType_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setKeyType(int value) {
            this.keyType_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearKeyType() {
            this.keyType_ = 0;
        }

        @Override // wallet.core.jni.proto.NEAR.PublicKeyOrBuilder
        public ByteString getData() {
            return this.data_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setData(ByteString value) {
            value.getClass();
            this.data_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearData() {
            this.data_ = getDefaultInstance().getData();
        }

        public static PublicKey parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (PublicKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static PublicKey parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (PublicKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static PublicKey parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (PublicKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static PublicKey parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (PublicKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static PublicKey parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (PublicKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static PublicKey parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (PublicKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static PublicKey parseFrom(InputStream input) throws IOException {
            return (PublicKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static PublicKey parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (PublicKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static PublicKey parseDelimitedFrom(InputStream input) throws IOException {
            return (PublicKey) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static PublicKey parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (PublicKey) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static PublicKey parseFrom(CodedInputStream input) throws IOException {
            return (PublicKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static PublicKey parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (PublicKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(PublicKey prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<PublicKey, Builder> implements PublicKeyOrBuilder {
            /* synthetic */ Builder(C77511 c77511) {
                this();
            }

            private Builder() {
                super(PublicKey.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.NEAR.PublicKeyOrBuilder
            public int getKeyType() {
                return ((PublicKey) this.instance).getKeyType();
            }

            public Builder setKeyType(int value) {
                copyOnWrite();
                ((PublicKey) this.instance).setKeyType(value);
                return this;
            }

            public Builder clearKeyType() {
                copyOnWrite();
                ((PublicKey) this.instance).clearKeyType();
                return this;
            }

            @Override // wallet.core.jni.proto.NEAR.PublicKeyOrBuilder
            public ByteString getData() {
                return ((PublicKey) this.instance).getData();
            }

            public Builder setData(ByteString value) {
                copyOnWrite();
                ((PublicKey) this.instance).setData(value);
                return this;
            }

            public Builder clearData() {
                copyOnWrite();
                ((PublicKey) this.instance).clearData();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77511.f2144xa1df5c61[method.ordinal()]) {
                case 1:
                    return new PublicKey();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\n", new Object[]{"keyType_", "data_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<PublicKey> parser = PARSER;
                    if (parser == null) {
                        synchronized (PublicKey.class) {
                            parser = PARSER;
                            if (parser == null) {
                                parser = new GeneratedMessageLite.DefaultInstanceBasedParser<>(DEFAULT_INSTANCE);
                                PARSER = parser;
                            }
                        }
                    }
                    return parser;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        static {
            PublicKey publicKey = new PublicKey();
            DEFAULT_INSTANCE = publicKey;
            GeneratedMessageLite.registerDefaultInstance(PublicKey.class, publicKey);
        }

        public static PublicKey getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<PublicKey> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* renamed from: wallet.core.jni.proto.NEAR$1 */
    /* loaded from: classes7.dex */
    static /* synthetic */ class C77511 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f2144xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f2144xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2144xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2144xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2144xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2144xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2144xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2144xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes7.dex */
    public static final class FunctionCallPermission extends GeneratedMessageLite<FunctionCallPermission, Builder> implements FunctionCallPermissionOrBuilder {
        public static final int ALLOWANCE_FIELD_NUMBER = 1;
        private static final FunctionCallPermission DEFAULT_INSTANCE;
        public static final int METHOD_NAMES_FIELD_NUMBER = 3;
        private static volatile Parser<FunctionCallPermission> PARSER = null;
        public static final int RECEIVER_ID_FIELD_NUMBER = 2;
        private ByteString allowance_ = ByteString.EMPTY;
        private String receiverId_ = "";
        private Internal.ProtobufList<String> methodNames_ = GeneratedMessageLite.emptyProtobufList();

        private FunctionCallPermission() {
        }

        @Override // wallet.core.jni.proto.NEAR.FunctionCallPermissionOrBuilder
        public ByteString getAllowance() {
            return this.allowance_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAllowance(ByteString value) {
            value.getClass();
            this.allowance_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAllowance() {
            this.allowance_ = getDefaultInstance().getAllowance();
        }

        @Override // wallet.core.jni.proto.NEAR.FunctionCallPermissionOrBuilder
        public String getReceiverId() {
            return this.receiverId_;
        }

        @Override // wallet.core.jni.proto.NEAR.FunctionCallPermissionOrBuilder
        public ByteString getReceiverIdBytes() {
            return ByteString.copyFromUtf8(this.receiverId_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setReceiverId(String value) {
            value.getClass();
            this.receiverId_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearReceiverId() {
            this.receiverId_ = getDefaultInstance().getReceiverId();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setReceiverIdBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.receiverId_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.NEAR.FunctionCallPermissionOrBuilder
        public List<String> getMethodNamesList() {
            return this.methodNames_;
        }

        @Override // wallet.core.jni.proto.NEAR.FunctionCallPermissionOrBuilder
        public int getMethodNamesCount() {
            return this.methodNames_.size();
        }

        @Override // wallet.core.jni.proto.NEAR.FunctionCallPermissionOrBuilder
        public String getMethodNames(int index) {
            return this.methodNames_.get(index);
        }

        @Override // wallet.core.jni.proto.NEAR.FunctionCallPermissionOrBuilder
        public ByteString getMethodNamesBytes(int index) {
            return ByteString.copyFromUtf8(this.methodNames_.get(index));
        }

        private void ensureMethodNamesIsMutable() {
            Internal.ProtobufList<String> protobufList = this.methodNames_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.methodNames_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMethodNames(int index, String value) {
            value.getClass();
            ensureMethodNamesIsMutable();
            this.methodNames_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addMethodNames(String value) {
            value.getClass();
            ensureMethodNamesIsMutable();
            this.methodNames_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllMethodNames(Iterable<String> values) {
            ensureMethodNamesIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.methodNames_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMethodNames() {
            this.methodNames_ = GeneratedMessageLite.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addMethodNamesBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            ensureMethodNamesIsMutable();
            this.methodNames_.add(value.toStringUtf8());
        }

        public static FunctionCallPermission parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (FunctionCallPermission) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static FunctionCallPermission parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (FunctionCallPermission) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static FunctionCallPermission parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (FunctionCallPermission) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static FunctionCallPermission parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (FunctionCallPermission) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static FunctionCallPermission parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (FunctionCallPermission) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static FunctionCallPermission parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (FunctionCallPermission) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static FunctionCallPermission parseFrom(InputStream input) throws IOException {
            return (FunctionCallPermission) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static FunctionCallPermission parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (FunctionCallPermission) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static FunctionCallPermission parseDelimitedFrom(InputStream input) throws IOException {
            return (FunctionCallPermission) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static FunctionCallPermission parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (FunctionCallPermission) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static FunctionCallPermission parseFrom(CodedInputStream input) throws IOException {
            return (FunctionCallPermission) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static FunctionCallPermission parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (FunctionCallPermission) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(FunctionCallPermission prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<FunctionCallPermission, Builder> implements FunctionCallPermissionOrBuilder {
            /* synthetic */ Builder(C77511 c77511) {
                this();
            }

            private Builder() {
                super(FunctionCallPermission.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.NEAR.FunctionCallPermissionOrBuilder
            public ByteString getAllowance() {
                return ((FunctionCallPermission) this.instance).getAllowance();
            }

            public Builder setAllowance(ByteString value) {
                copyOnWrite();
                ((FunctionCallPermission) this.instance).setAllowance(value);
                return this;
            }

            public Builder clearAllowance() {
                copyOnWrite();
                ((FunctionCallPermission) this.instance).clearAllowance();
                return this;
            }

            @Override // wallet.core.jni.proto.NEAR.FunctionCallPermissionOrBuilder
            public String getReceiverId() {
                return ((FunctionCallPermission) this.instance).getReceiverId();
            }

            @Override // wallet.core.jni.proto.NEAR.FunctionCallPermissionOrBuilder
            public ByteString getReceiverIdBytes() {
                return ((FunctionCallPermission) this.instance).getReceiverIdBytes();
            }

            public Builder setReceiverId(String value) {
                copyOnWrite();
                ((FunctionCallPermission) this.instance).setReceiverId(value);
                return this;
            }

            public Builder clearReceiverId() {
                copyOnWrite();
                ((FunctionCallPermission) this.instance).clearReceiverId();
                return this;
            }

            public Builder setReceiverIdBytes(ByteString value) {
                copyOnWrite();
                ((FunctionCallPermission) this.instance).setReceiverIdBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.NEAR.FunctionCallPermissionOrBuilder
            public List<String> getMethodNamesList() {
                return Collections.unmodifiableList(((FunctionCallPermission) this.instance).getMethodNamesList());
            }

            @Override // wallet.core.jni.proto.NEAR.FunctionCallPermissionOrBuilder
            public int getMethodNamesCount() {
                return ((FunctionCallPermission) this.instance).getMethodNamesCount();
            }

            @Override // wallet.core.jni.proto.NEAR.FunctionCallPermissionOrBuilder
            public String getMethodNames(int index) {
                return ((FunctionCallPermission) this.instance).getMethodNames(index);
            }

            @Override // wallet.core.jni.proto.NEAR.FunctionCallPermissionOrBuilder
            public ByteString getMethodNamesBytes(int index) {
                return ((FunctionCallPermission) this.instance).getMethodNamesBytes(index);
            }

            public Builder setMethodNames(int index, String value) {
                copyOnWrite();
                ((FunctionCallPermission) this.instance).setMethodNames(index, value);
                return this;
            }

            public Builder addMethodNames(String value) {
                copyOnWrite();
                ((FunctionCallPermission) this.instance).addMethodNames(value);
                return this;
            }

            public Builder addAllMethodNames(Iterable<String> values) {
                copyOnWrite();
                ((FunctionCallPermission) this.instance).addAllMethodNames(values);
                return this;
            }

            public Builder clearMethodNames() {
                copyOnWrite();
                ((FunctionCallPermission) this.instance).clearMethodNames();
                return this;
            }

            public Builder addMethodNamesBytes(ByteString value) {
                copyOnWrite();
                ((FunctionCallPermission) this.instance).addMethodNamesBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77511.f2144xa1df5c61[method.ordinal()]) {
                case 1:
                    return new FunctionCallPermission();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0001\u0000\u0001\n\u0002Ȉ\u0003Ț", new Object[]{"allowance_", "receiverId_", "methodNames_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<FunctionCallPermission> parser = PARSER;
                    if (parser == null) {
                        synchronized (FunctionCallPermission.class) {
                            parser = PARSER;
                            if (parser == null) {
                                parser = new GeneratedMessageLite.DefaultInstanceBasedParser<>(DEFAULT_INSTANCE);
                                PARSER = parser;
                            }
                        }
                    }
                    return parser;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        static {
            FunctionCallPermission functionCallPermission = new FunctionCallPermission();
            DEFAULT_INSTANCE = functionCallPermission;
            GeneratedMessageLite.registerDefaultInstance(FunctionCallPermission.class, functionCallPermission);
        }

        public static FunctionCallPermission getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<FunctionCallPermission> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class FullAccessPermission extends GeneratedMessageLite<FullAccessPermission, Builder> implements FullAccessPermissionOrBuilder {
        private static final FullAccessPermission DEFAULT_INSTANCE;
        private static volatile Parser<FullAccessPermission> PARSER;

        private FullAccessPermission() {
        }

        public static FullAccessPermission parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (FullAccessPermission) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static FullAccessPermission parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (FullAccessPermission) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static FullAccessPermission parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (FullAccessPermission) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static FullAccessPermission parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (FullAccessPermission) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static FullAccessPermission parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (FullAccessPermission) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static FullAccessPermission parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (FullAccessPermission) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static FullAccessPermission parseFrom(InputStream input) throws IOException {
            return (FullAccessPermission) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static FullAccessPermission parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (FullAccessPermission) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static FullAccessPermission parseDelimitedFrom(InputStream input) throws IOException {
            return (FullAccessPermission) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static FullAccessPermission parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (FullAccessPermission) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static FullAccessPermission parseFrom(CodedInputStream input) throws IOException {
            return (FullAccessPermission) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static FullAccessPermission parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (FullAccessPermission) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(FullAccessPermission prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<FullAccessPermission, Builder> implements FullAccessPermissionOrBuilder {
            /* synthetic */ Builder(C77511 c77511) {
                this();
            }

            private Builder() {
                super(FullAccessPermission.DEFAULT_INSTANCE);
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77511.f2144xa1df5c61[method.ordinal()]) {
                case 1:
                    return new FullAccessPermission();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0000", null);
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<FullAccessPermission> parser = PARSER;
                    if (parser == null) {
                        synchronized (FullAccessPermission.class) {
                            parser = PARSER;
                            if (parser == null) {
                                parser = new GeneratedMessageLite.DefaultInstanceBasedParser<>(DEFAULT_INSTANCE);
                                PARSER = parser;
                            }
                        }
                    }
                    return parser;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        static {
            FullAccessPermission fullAccessPermission = new FullAccessPermission();
            DEFAULT_INSTANCE = fullAccessPermission;
            GeneratedMessageLite.registerDefaultInstance(FullAccessPermission.class, fullAccessPermission);
        }

        public static FullAccessPermission getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<FullAccessPermission> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class AccessKey extends GeneratedMessageLite<AccessKey, Builder> implements AccessKeyOrBuilder {
        private static final AccessKey DEFAULT_INSTANCE;
        public static final int FULL_ACCESS_FIELD_NUMBER = 3;
        public static final int FUNCTION_CALL_FIELD_NUMBER = 2;
        public static final int NONCE_FIELD_NUMBER = 1;
        private static volatile Parser<AccessKey> PARSER;
        private long nonce_;
        private int permissionCase_ = 0;
        private Object permission_;

        private AccessKey() {
        }

        /* loaded from: classes7.dex */
        public enum PermissionCase {
            FUNCTION_CALL(2),
            FULL_ACCESS(3),
            PERMISSION_NOT_SET(0);
            
            private final int value;

            PermissionCase(int value) {
                this.value = value;
            }

            @Deprecated
            public static PermissionCase valueOf(int value) {
                return forNumber(value);
            }

            public static PermissionCase forNumber(int value) {
                if (value != 0) {
                    if (value != 2) {
                        if (value != 3) {
                            return null;
                        }
                        return FULL_ACCESS;
                    }
                    return FUNCTION_CALL;
                }
                return PERMISSION_NOT_SET;
            }

            public int getNumber() {
                return this.value;
            }
        }

        @Override // wallet.core.jni.proto.NEAR.AccessKeyOrBuilder
        public PermissionCase getPermissionCase() {
            return PermissionCase.forNumber(this.permissionCase_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPermission() {
            this.permissionCase_ = 0;
            this.permission_ = null;
        }

        @Override // wallet.core.jni.proto.NEAR.AccessKeyOrBuilder
        public long getNonce() {
            return this.nonce_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setNonce(long value) {
            this.nonce_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearNonce() {
            this.nonce_ = 0L;
        }

        @Override // wallet.core.jni.proto.NEAR.AccessKeyOrBuilder
        public boolean hasFunctionCall() {
            return this.permissionCase_ == 2;
        }

        @Override // wallet.core.jni.proto.NEAR.AccessKeyOrBuilder
        public FunctionCallPermission getFunctionCall() {
            if (this.permissionCase_ == 2) {
                return (FunctionCallPermission) this.permission_;
            }
            return FunctionCallPermission.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFunctionCall(FunctionCallPermission value) {
            value.getClass();
            this.permission_ = value;
            this.permissionCase_ = 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeFunctionCall(FunctionCallPermission value) {
            value.getClass();
            if (this.permissionCase_ == 2 && this.permission_ != FunctionCallPermission.getDefaultInstance()) {
                this.permission_ = FunctionCallPermission.newBuilder((FunctionCallPermission) this.permission_).mergeFrom((FunctionCallPermission.Builder) value).buildPartial();
            } else {
                this.permission_ = value;
            }
            this.permissionCase_ = 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFunctionCall() {
            if (this.permissionCase_ == 2) {
                this.permissionCase_ = 0;
                this.permission_ = null;
            }
        }

        @Override // wallet.core.jni.proto.NEAR.AccessKeyOrBuilder
        public boolean hasFullAccess() {
            return this.permissionCase_ == 3;
        }

        @Override // wallet.core.jni.proto.NEAR.AccessKeyOrBuilder
        public FullAccessPermission getFullAccess() {
            if (this.permissionCase_ == 3) {
                return (FullAccessPermission) this.permission_;
            }
            return FullAccessPermission.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFullAccess(FullAccessPermission value) {
            value.getClass();
            this.permission_ = value;
            this.permissionCase_ = 3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeFullAccess(FullAccessPermission value) {
            value.getClass();
            if (this.permissionCase_ == 3 && this.permission_ != FullAccessPermission.getDefaultInstance()) {
                this.permission_ = FullAccessPermission.newBuilder((FullAccessPermission) this.permission_).mergeFrom((FullAccessPermission.Builder) value).buildPartial();
            } else {
                this.permission_ = value;
            }
            this.permissionCase_ = 3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFullAccess() {
            if (this.permissionCase_ == 3) {
                this.permissionCase_ = 0;
                this.permission_ = null;
            }
        }

        public static AccessKey parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (AccessKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static AccessKey parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (AccessKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static AccessKey parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (AccessKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static AccessKey parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (AccessKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static AccessKey parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (AccessKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static AccessKey parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (AccessKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static AccessKey parseFrom(InputStream input) throws IOException {
            return (AccessKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static AccessKey parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (AccessKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static AccessKey parseDelimitedFrom(InputStream input) throws IOException {
            return (AccessKey) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static AccessKey parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (AccessKey) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static AccessKey parseFrom(CodedInputStream input) throws IOException {
            return (AccessKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static AccessKey parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (AccessKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(AccessKey prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<AccessKey, Builder> implements AccessKeyOrBuilder {
            /* synthetic */ Builder(C77511 c77511) {
                this();
            }

            private Builder() {
                super(AccessKey.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.NEAR.AccessKeyOrBuilder
            public PermissionCase getPermissionCase() {
                return ((AccessKey) this.instance).getPermissionCase();
            }

            public Builder clearPermission() {
                copyOnWrite();
                ((AccessKey) this.instance).clearPermission();
                return this;
            }

            @Override // wallet.core.jni.proto.NEAR.AccessKeyOrBuilder
            public long getNonce() {
                return ((AccessKey) this.instance).getNonce();
            }

            public Builder setNonce(long value) {
                copyOnWrite();
                ((AccessKey) this.instance).setNonce(value);
                return this;
            }

            public Builder clearNonce() {
                copyOnWrite();
                ((AccessKey) this.instance).clearNonce();
                return this;
            }

            @Override // wallet.core.jni.proto.NEAR.AccessKeyOrBuilder
            public boolean hasFunctionCall() {
                return ((AccessKey) this.instance).hasFunctionCall();
            }

            @Override // wallet.core.jni.proto.NEAR.AccessKeyOrBuilder
            public FunctionCallPermission getFunctionCall() {
                return ((AccessKey) this.instance).getFunctionCall();
            }

            public Builder setFunctionCall(FunctionCallPermission value) {
                copyOnWrite();
                ((AccessKey) this.instance).setFunctionCall(value);
                return this;
            }

            public Builder setFunctionCall(FunctionCallPermission.Builder builderForValue) {
                copyOnWrite();
                ((AccessKey) this.instance).setFunctionCall(builderForValue.build());
                return this;
            }

            public Builder mergeFunctionCall(FunctionCallPermission value) {
                copyOnWrite();
                ((AccessKey) this.instance).mergeFunctionCall(value);
                return this;
            }

            public Builder clearFunctionCall() {
                copyOnWrite();
                ((AccessKey) this.instance).clearFunctionCall();
                return this;
            }

            @Override // wallet.core.jni.proto.NEAR.AccessKeyOrBuilder
            public boolean hasFullAccess() {
                return ((AccessKey) this.instance).hasFullAccess();
            }

            @Override // wallet.core.jni.proto.NEAR.AccessKeyOrBuilder
            public FullAccessPermission getFullAccess() {
                return ((AccessKey) this.instance).getFullAccess();
            }

            public Builder setFullAccess(FullAccessPermission value) {
                copyOnWrite();
                ((AccessKey) this.instance).setFullAccess(value);
                return this;
            }

            public Builder setFullAccess(FullAccessPermission.Builder builderForValue) {
                copyOnWrite();
                ((AccessKey) this.instance).setFullAccess(builderForValue.build());
                return this;
            }

            public Builder mergeFullAccess(FullAccessPermission value) {
                copyOnWrite();
                ((AccessKey) this.instance).mergeFullAccess(value);
                return this;
            }

            public Builder clearFullAccess() {
                copyOnWrite();
                ((AccessKey) this.instance).clearFullAccess();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77511.f2144xa1df5c61[method.ordinal()]) {
                case 1:
                    return new AccessKey();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0001\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0003\u0002<\u0000\u0003<\u0000", new Object[]{"permission_", "permissionCase_", "nonce_", FunctionCallPermission.class, FullAccessPermission.class});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<AccessKey> parser = PARSER;
                    if (parser == null) {
                        synchronized (AccessKey.class) {
                            parser = PARSER;
                            if (parser == null) {
                                parser = new GeneratedMessageLite.DefaultInstanceBasedParser<>(DEFAULT_INSTANCE);
                                PARSER = parser;
                            }
                        }
                    }
                    return parser;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        static {
            AccessKey accessKey = new AccessKey();
            DEFAULT_INSTANCE = accessKey;
            GeneratedMessageLite.registerDefaultInstance(AccessKey.class, accessKey);
        }

        public static AccessKey getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<AccessKey> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class CreateAccount extends GeneratedMessageLite<CreateAccount, Builder> implements CreateAccountOrBuilder {
        private static final CreateAccount DEFAULT_INSTANCE;
        private static volatile Parser<CreateAccount> PARSER;

        private CreateAccount() {
        }

        public static CreateAccount parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (CreateAccount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static CreateAccount parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (CreateAccount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static CreateAccount parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (CreateAccount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static CreateAccount parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (CreateAccount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static CreateAccount parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (CreateAccount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static CreateAccount parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (CreateAccount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static CreateAccount parseFrom(InputStream input) throws IOException {
            return (CreateAccount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static CreateAccount parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (CreateAccount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static CreateAccount parseDelimitedFrom(InputStream input) throws IOException {
            return (CreateAccount) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static CreateAccount parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (CreateAccount) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static CreateAccount parseFrom(CodedInputStream input) throws IOException {
            return (CreateAccount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static CreateAccount parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (CreateAccount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(CreateAccount prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<CreateAccount, Builder> implements CreateAccountOrBuilder {
            /* synthetic */ Builder(C77511 c77511) {
                this();
            }

            private Builder() {
                super(CreateAccount.DEFAULT_INSTANCE);
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77511.f2144xa1df5c61[method.ordinal()]) {
                case 1:
                    return new CreateAccount();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0000", null);
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<CreateAccount> parser = PARSER;
                    if (parser == null) {
                        synchronized (CreateAccount.class) {
                            parser = PARSER;
                            if (parser == null) {
                                parser = new GeneratedMessageLite.DefaultInstanceBasedParser<>(DEFAULT_INSTANCE);
                                PARSER = parser;
                            }
                        }
                    }
                    return parser;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        static {
            CreateAccount createAccount = new CreateAccount();
            DEFAULT_INSTANCE = createAccount;
            GeneratedMessageLite.registerDefaultInstance(CreateAccount.class, createAccount);
        }

        public static CreateAccount getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CreateAccount> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class DeployContract extends GeneratedMessageLite<DeployContract, Builder> implements DeployContractOrBuilder {
        public static final int CODE_FIELD_NUMBER = 1;
        private static final DeployContract DEFAULT_INSTANCE;
        private static volatile Parser<DeployContract> PARSER;
        private ByteString code_ = ByteString.EMPTY;

        private DeployContract() {
        }

        @Override // wallet.core.jni.proto.NEAR.DeployContractOrBuilder
        public ByteString getCode() {
            return this.code_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCode(ByteString value) {
            value.getClass();
            this.code_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCode() {
            this.code_ = getDefaultInstance().getCode();
        }

        public static DeployContract parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (DeployContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DeployContract parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DeployContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DeployContract parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (DeployContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DeployContract parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DeployContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DeployContract parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (DeployContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DeployContract parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DeployContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DeployContract parseFrom(InputStream input) throws IOException {
            return (DeployContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static DeployContract parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DeployContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static DeployContract parseDelimitedFrom(InputStream input) throws IOException {
            return (DeployContract) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static DeployContract parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DeployContract) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static DeployContract parseFrom(CodedInputStream input) throws IOException {
            return (DeployContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static DeployContract parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DeployContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(DeployContract prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<DeployContract, Builder> implements DeployContractOrBuilder {
            /* synthetic */ Builder(C77511 c77511) {
                this();
            }

            private Builder() {
                super(DeployContract.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.NEAR.DeployContractOrBuilder
            public ByteString getCode() {
                return ((DeployContract) this.instance).getCode();
            }

            public Builder setCode(ByteString value) {
                copyOnWrite();
                ((DeployContract) this.instance).setCode(value);
                return this;
            }

            public Builder clearCode() {
                copyOnWrite();
                ((DeployContract) this.instance).clearCode();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77511.f2144xa1df5c61[method.ordinal()]) {
                case 1:
                    return new DeployContract();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\n", new Object[]{"code_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<DeployContract> parser = PARSER;
                    if (parser == null) {
                        synchronized (DeployContract.class) {
                            parser = PARSER;
                            if (parser == null) {
                                parser = new GeneratedMessageLite.DefaultInstanceBasedParser<>(DEFAULT_INSTANCE);
                                PARSER = parser;
                            }
                        }
                    }
                    return parser;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        static {
            DeployContract deployContract = new DeployContract();
            DEFAULT_INSTANCE = deployContract;
            GeneratedMessageLite.registerDefaultInstance(DeployContract.class, deployContract);
        }

        public static DeployContract getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<DeployContract> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class FunctionCall extends GeneratedMessageLite<FunctionCall, Builder> implements FunctionCallOrBuilder {
        public static final int ARGS_FIELD_NUMBER = 2;
        private static final FunctionCall DEFAULT_INSTANCE;
        public static final int DEPOSIT_FIELD_NUMBER = 4;
        public static final int GAS_FIELD_NUMBER = 3;
        public static final int METHOD_NAME_FIELD_NUMBER = 1;
        private static volatile Parser<FunctionCall> PARSER;
        private ByteString args_;
        private ByteString deposit_;
        private long gas_;
        private String methodName_ = "";

        private FunctionCall() {
            ByteString byteString = ByteString.EMPTY;
            this.args_ = byteString;
            this.deposit_ = byteString;
        }

        @Override // wallet.core.jni.proto.NEAR.FunctionCallOrBuilder
        public String getMethodName() {
            return this.methodName_;
        }

        @Override // wallet.core.jni.proto.NEAR.FunctionCallOrBuilder
        public ByteString getMethodNameBytes() {
            return ByteString.copyFromUtf8(this.methodName_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMethodName(String value) {
            value.getClass();
            this.methodName_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMethodName() {
            this.methodName_ = getDefaultInstance().getMethodName();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMethodNameBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.methodName_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.NEAR.FunctionCallOrBuilder
        public ByteString getArgs() {
            return this.args_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setArgs(ByteString value) {
            value.getClass();
            this.args_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearArgs() {
            this.args_ = getDefaultInstance().getArgs();
        }

        @Override // wallet.core.jni.proto.NEAR.FunctionCallOrBuilder
        public long getGas() {
            return this.gas_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setGas(long value) {
            this.gas_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearGas() {
            this.gas_ = 0L;
        }

        @Override // wallet.core.jni.proto.NEAR.FunctionCallOrBuilder
        public ByteString getDeposit() {
            return this.deposit_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDeposit(ByteString value) {
            value.getClass();
            this.deposit_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDeposit() {
            this.deposit_ = getDefaultInstance().getDeposit();
        }

        public static FunctionCall parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (FunctionCall) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static FunctionCall parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (FunctionCall) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static FunctionCall parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (FunctionCall) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static FunctionCall parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (FunctionCall) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static FunctionCall parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (FunctionCall) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static FunctionCall parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (FunctionCall) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static FunctionCall parseFrom(InputStream input) throws IOException {
            return (FunctionCall) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static FunctionCall parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (FunctionCall) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static FunctionCall parseDelimitedFrom(InputStream input) throws IOException {
            return (FunctionCall) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static FunctionCall parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (FunctionCall) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static FunctionCall parseFrom(CodedInputStream input) throws IOException {
            return (FunctionCall) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static FunctionCall parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (FunctionCall) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(FunctionCall prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<FunctionCall, Builder> implements FunctionCallOrBuilder {
            /* synthetic */ Builder(C77511 c77511) {
                this();
            }

            private Builder() {
                super(FunctionCall.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.NEAR.FunctionCallOrBuilder
            public String getMethodName() {
                return ((FunctionCall) this.instance).getMethodName();
            }

            @Override // wallet.core.jni.proto.NEAR.FunctionCallOrBuilder
            public ByteString getMethodNameBytes() {
                return ((FunctionCall) this.instance).getMethodNameBytes();
            }

            public Builder setMethodName(String value) {
                copyOnWrite();
                ((FunctionCall) this.instance).setMethodName(value);
                return this;
            }

            public Builder clearMethodName() {
                copyOnWrite();
                ((FunctionCall) this.instance).clearMethodName();
                return this;
            }

            public Builder setMethodNameBytes(ByteString value) {
                copyOnWrite();
                ((FunctionCall) this.instance).setMethodNameBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.NEAR.FunctionCallOrBuilder
            public ByteString getArgs() {
                return ((FunctionCall) this.instance).getArgs();
            }

            public Builder setArgs(ByteString value) {
                copyOnWrite();
                ((FunctionCall) this.instance).setArgs(value);
                return this;
            }

            public Builder clearArgs() {
                copyOnWrite();
                ((FunctionCall) this.instance).clearArgs();
                return this;
            }

            @Override // wallet.core.jni.proto.NEAR.FunctionCallOrBuilder
            public long getGas() {
                return ((FunctionCall) this.instance).getGas();
            }

            public Builder setGas(long value) {
                copyOnWrite();
                ((FunctionCall) this.instance).setGas(value);
                return this;
            }

            public Builder clearGas() {
                copyOnWrite();
                ((FunctionCall) this.instance).clearGas();
                return this;
            }

            @Override // wallet.core.jni.proto.NEAR.FunctionCallOrBuilder
            public ByteString getDeposit() {
                return ((FunctionCall) this.instance).getDeposit();
            }

            public Builder setDeposit(ByteString value) {
                copyOnWrite();
                ((FunctionCall) this.instance).setDeposit(value);
                return this;
            }

            public Builder clearDeposit() {
                copyOnWrite();
                ((FunctionCall) this.instance).clearDeposit();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77511.f2144xa1df5c61[method.ordinal()]) {
                case 1:
                    return new FunctionCall();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\u0003\u0004\n", new Object[]{"methodName_", "args_", "gas_", "deposit_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<FunctionCall> parser = PARSER;
                    if (parser == null) {
                        synchronized (FunctionCall.class) {
                            parser = PARSER;
                            if (parser == null) {
                                parser = new GeneratedMessageLite.DefaultInstanceBasedParser<>(DEFAULT_INSTANCE);
                                PARSER = parser;
                            }
                        }
                    }
                    return parser;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        static {
            FunctionCall functionCall = new FunctionCall();
            DEFAULT_INSTANCE = functionCall;
            GeneratedMessageLite.registerDefaultInstance(FunctionCall.class, functionCall);
        }

        public static FunctionCall getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<FunctionCall> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class Transfer extends GeneratedMessageLite<Transfer, Builder> implements TransferOrBuilder {
        private static final Transfer DEFAULT_INSTANCE;
        public static final int DEPOSIT_FIELD_NUMBER = 1;
        private static volatile Parser<Transfer> PARSER;
        private ByteString deposit_ = ByteString.EMPTY;

        private Transfer() {
        }

        @Override // wallet.core.jni.proto.NEAR.TransferOrBuilder
        public ByteString getDeposit() {
            return this.deposit_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDeposit(ByteString value) {
            value.getClass();
            this.deposit_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDeposit() {
            this.deposit_ = getDefaultInstance().getDeposit();
        }

        public static Transfer parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Transfer parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Transfer parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Transfer parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Transfer parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Transfer parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Transfer parseFrom(InputStream input) throws IOException {
            return (Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Transfer parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Transfer parseDelimitedFrom(InputStream input) throws IOException {
            return (Transfer) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static Transfer parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Transfer) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Transfer parseFrom(CodedInputStream input) throws IOException {
            return (Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Transfer parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(Transfer prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<Transfer, Builder> implements TransferOrBuilder {
            /* synthetic */ Builder(C77511 c77511) {
                this();
            }

            private Builder() {
                super(Transfer.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.NEAR.TransferOrBuilder
            public ByteString getDeposit() {
                return ((Transfer) this.instance).getDeposit();
            }

            public Builder setDeposit(ByteString value) {
                copyOnWrite();
                ((Transfer) this.instance).setDeposit(value);
                return this;
            }

            public Builder clearDeposit() {
                copyOnWrite();
                ((Transfer) this.instance).clearDeposit();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77511.f2144xa1df5c61[method.ordinal()]) {
                case 1:
                    return new Transfer();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\n", new Object[]{"deposit_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<Transfer> parser = PARSER;
                    if (parser == null) {
                        synchronized (Transfer.class) {
                            parser = PARSER;
                            if (parser == null) {
                                parser = new GeneratedMessageLite.DefaultInstanceBasedParser<>(DEFAULT_INSTANCE);
                                PARSER = parser;
                            }
                        }
                    }
                    return parser;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        static {
            Transfer transfer = new Transfer();
            DEFAULT_INSTANCE = transfer;
            GeneratedMessageLite.registerDefaultInstance(Transfer.class, transfer);
        }

        public static Transfer getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Transfer> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class Stake extends GeneratedMessageLite<Stake, Builder> implements StakeOrBuilder {
        private static final Stake DEFAULT_INSTANCE;
        private static volatile Parser<Stake> PARSER = null;
        public static final int PUBLIC_KEY_FIELD_NUMBER = 2;
        public static final int STAKE_FIELD_NUMBER = 1;
        private PublicKey publicKey_;
        private ByteString stake_ = ByteString.EMPTY;

        private Stake() {
        }

        @Override // wallet.core.jni.proto.NEAR.StakeOrBuilder
        public ByteString getStake() {
            return this.stake_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStake(ByteString value) {
            value.getClass();
            this.stake_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStake() {
            this.stake_ = getDefaultInstance().getStake();
        }

        @Override // wallet.core.jni.proto.NEAR.StakeOrBuilder
        public boolean hasPublicKey() {
            return this.publicKey_ != null;
        }

        @Override // wallet.core.jni.proto.NEAR.StakeOrBuilder
        public PublicKey getPublicKey() {
            PublicKey publicKey = this.publicKey_;
            return publicKey == null ? PublicKey.getDefaultInstance() : publicKey;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPublicKey(PublicKey value) {
            value.getClass();
            this.publicKey_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergePublicKey(PublicKey value) {
            value.getClass();
            PublicKey publicKey = this.publicKey_;
            if (publicKey != null && publicKey != PublicKey.getDefaultInstance()) {
                this.publicKey_ = PublicKey.newBuilder(this.publicKey_).mergeFrom((PublicKey.Builder) value).buildPartial();
            } else {
                this.publicKey_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPublicKey() {
            this.publicKey_ = null;
        }

        public static Stake parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (Stake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Stake parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Stake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Stake parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (Stake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Stake parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Stake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Stake parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (Stake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Stake parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Stake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Stake parseFrom(InputStream input) throws IOException {
            return (Stake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Stake parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Stake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Stake parseDelimitedFrom(InputStream input) throws IOException {
            return (Stake) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static Stake parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Stake) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Stake parseFrom(CodedInputStream input) throws IOException {
            return (Stake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Stake parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Stake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(Stake prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<Stake, Builder> implements StakeOrBuilder {
            /* synthetic */ Builder(C77511 c77511) {
                this();
            }

            private Builder() {
                super(Stake.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.NEAR.StakeOrBuilder
            public ByteString getStake() {
                return ((Stake) this.instance).getStake();
            }

            public Builder setStake(ByteString value) {
                copyOnWrite();
                ((Stake) this.instance).setStake(value);
                return this;
            }

            public Builder clearStake() {
                copyOnWrite();
                ((Stake) this.instance).clearStake();
                return this;
            }

            @Override // wallet.core.jni.proto.NEAR.StakeOrBuilder
            public boolean hasPublicKey() {
                return ((Stake) this.instance).hasPublicKey();
            }

            @Override // wallet.core.jni.proto.NEAR.StakeOrBuilder
            public PublicKey getPublicKey() {
                return ((Stake) this.instance).getPublicKey();
            }

            public Builder setPublicKey(PublicKey value) {
                copyOnWrite();
                ((Stake) this.instance).setPublicKey(value);
                return this;
            }

            public Builder setPublicKey(PublicKey.Builder builderForValue) {
                copyOnWrite();
                ((Stake) this.instance).setPublicKey(builderForValue.build());
                return this;
            }

            public Builder mergePublicKey(PublicKey value) {
                copyOnWrite();
                ((Stake) this.instance).mergePublicKey(value);
                return this;
            }

            public Builder clearPublicKey() {
                copyOnWrite();
                ((Stake) this.instance).clearPublicKey();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77511.f2144xa1df5c61[method.ordinal()]) {
                case 1:
                    return new Stake();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0002\t", new Object[]{"stake_", "publicKey_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<Stake> parser = PARSER;
                    if (parser == null) {
                        synchronized (Stake.class) {
                            parser = PARSER;
                            if (parser == null) {
                                parser = new GeneratedMessageLite.DefaultInstanceBasedParser<>(DEFAULT_INSTANCE);
                                PARSER = parser;
                            }
                        }
                    }
                    return parser;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        static {
            Stake stake = new Stake();
            DEFAULT_INSTANCE = stake;
            GeneratedMessageLite.registerDefaultInstance(Stake.class, stake);
        }

        public static Stake getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Stake> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class AddKey extends GeneratedMessageLite<AddKey, Builder> implements AddKeyOrBuilder {
        public static final int ACCESS_KEY_FIELD_NUMBER = 2;
        private static final AddKey DEFAULT_INSTANCE;
        private static volatile Parser<AddKey> PARSER = null;
        public static final int PUBLIC_KEY_FIELD_NUMBER = 1;
        private AccessKey accessKey_;
        private PublicKey publicKey_;

        private AddKey() {
        }

        @Override // wallet.core.jni.proto.NEAR.AddKeyOrBuilder
        public boolean hasPublicKey() {
            return this.publicKey_ != null;
        }

        @Override // wallet.core.jni.proto.NEAR.AddKeyOrBuilder
        public PublicKey getPublicKey() {
            PublicKey publicKey = this.publicKey_;
            return publicKey == null ? PublicKey.getDefaultInstance() : publicKey;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPublicKey(PublicKey value) {
            value.getClass();
            this.publicKey_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergePublicKey(PublicKey value) {
            value.getClass();
            PublicKey publicKey = this.publicKey_;
            if (publicKey != null && publicKey != PublicKey.getDefaultInstance()) {
                this.publicKey_ = PublicKey.newBuilder(this.publicKey_).mergeFrom((PublicKey.Builder) value).buildPartial();
            } else {
                this.publicKey_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPublicKey() {
            this.publicKey_ = null;
        }

        @Override // wallet.core.jni.proto.NEAR.AddKeyOrBuilder
        public boolean hasAccessKey() {
            return this.accessKey_ != null;
        }

        @Override // wallet.core.jni.proto.NEAR.AddKeyOrBuilder
        public AccessKey getAccessKey() {
            AccessKey accessKey = this.accessKey_;
            return accessKey == null ? AccessKey.getDefaultInstance() : accessKey;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAccessKey(AccessKey value) {
            value.getClass();
            this.accessKey_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeAccessKey(AccessKey value) {
            value.getClass();
            AccessKey accessKey = this.accessKey_;
            if (accessKey != null && accessKey != AccessKey.getDefaultInstance()) {
                this.accessKey_ = AccessKey.newBuilder(this.accessKey_).mergeFrom((AccessKey.Builder) value).buildPartial();
            } else {
                this.accessKey_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAccessKey() {
            this.accessKey_ = null;
        }

        public static AddKey parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (AddKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static AddKey parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (AddKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static AddKey parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (AddKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static AddKey parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (AddKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static AddKey parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (AddKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static AddKey parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (AddKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static AddKey parseFrom(InputStream input) throws IOException {
            return (AddKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static AddKey parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (AddKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static AddKey parseDelimitedFrom(InputStream input) throws IOException {
            return (AddKey) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static AddKey parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (AddKey) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static AddKey parseFrom(CodedInputStream input) throws IOException {
            return (AddKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static AddKey parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (AddKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(AddKey prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<AddKey, Builder> implements AddKeyOrBuilder {
            /* synthetic */ Builder(C77511 c77511) {
                this();
            }

            private Builder() {
                super(AddKey.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.NEAR.AddKeyOrBuilder
            public boolean hasPublicKey() {
                return ((AddKey) this.instance).hasPublicKey();
            }

            @Override // wallet.core.jni.proto.NEAR.AddKeyOrBuilder
            public PublicKey getPublicKey() {
                return ((AddKey) this.instance).getPublicKey();
            }

            public Builder setPublicKey(PublicKey value) {
                copyOnWrite();
                ((AddKey) this.instance).setPublicKey(value);
                return this;
            }

            public Builder setPublicKey(PublicKey.Builder builderForValue) {
                copyOnWrite();
                ((AddKey) this.instance).setPublicKey(builderForValue.build());
                return this;
            }

            public Builder mergePublicKey(PublicKey value) {
                copyOnWrite();
                ((AddKey) this.instance).mergePublicKey(value);
                return this;
            }

            public Builder clearPublicKey() {
                copyOnWrite();
                ((AddKey) this.instance).clearPublicKey();
                return this;
            }

            @Override // wallet.core.jni.proto.NEAR.AddKeyOrBuilder
            public boolean hasAccessKey() {
                return ((AddKey) this.instance).hasAccessKey();
            }

            @Override // wallet.core.jni.proto.NEAR.AddKeyOrBuilder
            public AccessKey getAccessKey() {
                return ((AddKey) this.instance).getAccessKey();
            }

            public Builder setAccessKey(AccessKey value) {
                copyOnWrite();
                ((AddKey) this.instance).setAccessKey(value);
                return this;
            }

            public Builder setAccessKey(AccessKey.Builder builderForValue) {
                copyOnWrite();
                ((AddKey) this.instance).setAccessKey(builderForValue.build());
                return this;
            }

            public Builder mergeAccessKey(AccessKey value) {
                copyOnWrite();
                ((AddKey) this.instance).mergeAccessKey(value);
                return this;
            }

            public Builder clearAccessKey() {
                copyOnWrite();
                ((AddKey) this.instance).clearAccessKey();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77511.f2144xa1df5c61[method.ordinal()]) {
                case 1:
                    return new AddKey();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\t", new Object[]{"publicKey_", "accessKey_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<AddKey> parser = PARSER;
                    if (parser == null) {
                        synchronized (AddKey.class) {
                            parser = PARSER;
                            if (parser == null) {
                                parser = new GeneratedMessageLite.DefaultInstanceBasedParser<>(DEFAULT_INSTANCE);
                                PARSER = parser;
                            }
                        }
                    }
                    return parser;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        static {
            AddKey addKey = new AddKey();
            DEFAULT_INSTANCE = addKey;
            GeneratedMessageLite.registerDefaultInstance(AddKey.class, addKey);
        }

        public static AddKey getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<AddKey> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class DeleteKey extends GeneratedMessageLite<DeleteKey, Builder> implements DeleteKeyOrBuilder {
        private static final DeleteKey DEFAULT_INSTANCE;
        private static volatile Parser<DeleteKey> PARSER = null;
        public static final int PUBLIC_KEY_FIELD_NUMBER = 1;
        private PublicKey publicKey_;

        private DeleteKey() {
        }

        @Override // wallet.core.jni.proto.NEAR.DeleteKeyOrBuilder
        public boolean hasPublicKey() {
            return this.publicKey_ != null;
        }

        @Override // wallet.core.jni.proto.NEAR.DeleteKeyOrBuilder
        public PublicKey getPublicKey() {
            PublicKey publicKey = this.publicKey_;
            return publicKey == null ? PublicKey.getDefaultInstance() : publicKey;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPublicKey(PublicKey value) {
            value.getClass();
            this.publicKey_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergePublicKey(PublicKey value) {
            value.getClass();
            PublicKey publicKey = this.publicKey_;
            if (publicKey != null && publicKey != PublicKey.getDefaultInstance()) {
                this.publicKey_ = PublicKey.newBuilder(this.publicKey_).mergeFrom((PublicKey.Builder) value).buildPartial();
            } else {
                this.publicKey_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPublicKey() {
            this.publicKey_ = null;
        }

        public static DeleteKey parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (DeleteKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DeleteKey parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DeleteKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DeleteKey parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (DeleteKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DeleteKey parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DeleteKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DeleteKey parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (DeleteKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DeleteKey parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DeleteKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DeleteKey parseFrom(InputStream input) throws IOException {
            return (DeleteKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static DeleteKey parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DeleteKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static DeleteKey parseDelimitedFrom(InputStream input) throws IOException {
            return (DeleteKey) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static DeleteKey parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DeleteKey) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static DeleteKey parseFrom(CodedInputStream input) throws IOException {
            return (DeleteKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static DeleteKey parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DeleteKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(DeleteKey prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<DeleteKey, Builder> implements DeleteKeyOrBuilder {
            /* synthetic */ Builder(C77511 c77511) {
                this();
            }

            private Builder() {
                super(DeleteKey.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.NEAR.DeleteKeyOrBuilder
            public boolean hasPublicKey() {
                return ((DeleteKey) this.instance).hasPublicKey();
            }

            @Override // wallet.core.jni.proto.NEAR.DeleteKeyOrBuilder
            public PublicKey getPublicKey() {
                return ((DeleteKey) this.instance).getPublicKey();
            }

            public Builder setPublicKey(PublicKey value) {
                copyOnWrite();
                ((DeleteKey) this.instance).setPublicKey(value);
                return this;
            }

            public Builder setPublicKey(PublicKey.Builder builderForValue) {
                copyOnWrite();
                ((DeleteKey) this.instance).setPublicKey(builderForValue.build());
                return this;
            }

            public Builder mergePublicKey(PublicKey value) {
                copyOnWrite();
                ((DeleteKey) this.instance).mergePublicKey(value);
                return this;
            }

            public Builder clearPublicKey() {
                copyOnWrite();
                ((DeleteKey) this.instance).clearPublicKey();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77511.f2144xa1df5c61[method.ordinal()]) {
                case 1:
                    return new DeleteKey();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\t", new Object[]{"publicKey_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<DeleteKey> parser = PARSER;
                    if (parser == null) {
                        synchronized (DeleteKey.class) {
                            parser = PARSER;
                            if (parser == null) {
                                parser = new GeneratedMessageLite.DefaultInstanceBasedParser<>(DEFAULT_INSTANCE);
                                PARSER = parser;
                            }
                        }
                    }
                    return parser;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        static {
            DeleteKey deleteKey = new DeleteKey();
            DEFAULT_INSTANCE = deleteKey;
            GeneratedMessageLite.registerDefaultInstance(DeleteKey.class, deleteKey);
        }

        public static DeleteKey getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<DeleteKey> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class DeleteAccount extends GeneratedMessageLite<DeleteAccount, Builder> implements DeleteAccountOrBuilder {
        public static final int BENEFICIARY_ID_FIELD_NUMBER = 1;
        private static final DeleteAccount DEFAULT_INSTANCE;
        private static volatile Parser<DeleteAccount> PARSER;
        private String beneficiaryId_ = "";

        private DeleteAccount() {
        }

        @Override // wallet.core.jni.proto.NEAR.DeleteAccountOrBuilder
        public String getBeneficiaryId() {
            return this.beneficiaryId_;
        }

        @Override // wallet.core.jni.proto.NEAR.DeleteAccountOrBuilder
        public ByteString getBeneficiaryIdBytes() {
            return ByteString.copyFromUtf8(this.beneficiaryId_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setBeneficiaryId(String value) {
            value.getClass();
            this.beneficiaryId_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearBeneficiaryId() {
            this.beneficiaryId_ = getDefaultInstance().getBeneficiaryId();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setBeneficiaryIdBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.beneficiaryId_ = value.toStringUtf8();
        }

        public static DeleteAccount parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (DeleteAccount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DeleteAccount parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DeleteAccount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DeleteAccount parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (DeleteAccount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DeleteAccount parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DeleteAccount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DeleteAccount parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (DeleteAccount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DeleteAccount parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DeleteAccount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DeleteAccount parseFrom(InputStream input) throws IOException {
            return (DeleteAccount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static DeleteAccount parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DeleteAccount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static DeleteAccount parseDelimitedFrom(InputStream input) throws IOException {
            return (DeleteAccount) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static DeleteAccount parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DeleteAccount) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static DeleteAccount parseFrom(CodedInputStream input) throws IOException {
            return (DeleteAccount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static DeleteAccount parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DeleteAccount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(DeleteAccount prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<DeleteAccount, Builder> implements DeleteAccountOrBuilder {
            /* synthetic */ Builder(C77511 c77511) {
                this();
            }

            private Builder() {
                super(DeleteAccount.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.NEAR.DeleteAccountOrBuilder
            public String getBeneficiaryId() {
                return ((DeleteAccount) this.instance).getBeneficiaryId();
            }

            @Override // wallet.core.jni.proto.NEAR.DeleteAccountOrBuilder
            public ByteString getBeneficiaryIdBytes() {
                return ((DeleteAccount) this.instance).getBeneficiaryIdBytes();
            }

            public Builder setBeneficiaryId(String value) {
                copyOnWrite();
                ((DeleteAccount) this.instance).setBeneficiaryId(value);
                return this;
            }

            public Builder clearBeneficiaryId() {
                copyOnWrite();
                ((DeleteAccount) this.instance).clearBeneficiaryId();
                return this;
            }

            public Builder setBeneficiaryIdBytes(ByteString value) {
                copyOnWrite();
                ((DeleteAccount) this.instance).setBeneficiaryIdBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77511.f2144xa1df5c61[method.ordinal()]) {
                case 1:
                    return new DeleteAccount();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001Ȉ", new Object[]{"beneficiaryId_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<DeleteAccount> parser = PARSER;
                    if (parser == null) {
                        synchronized (DeleteAccount.class) {
                            parser = PARSER;
                            if (parser == null) {
                                parser = new GeneratedMessageLite.DefaultInstanceBasedParser<>(DEFAULT_INSTANCE);
                                PARSER = parser;
                            }
                        }
                    }
                    return parser;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        static {
            DeleteAccount deleteAccount = new DeleteAccount();
            DEFAULT_INSTANCE = deleteAccount;
            GeneratedMessageLite.registerDefaultInstance(DeleteAccount.class, deleteAccount);
        }

        public static DeleteAccount getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<DeleteAccount> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class Action extends GeneratedMessageLite<Action, Builder> implements ActionOrBuilder {
        public static final int ADD_KEY_FIELD_NUMBER = 6;
        public static final int CREATE_ACCOUNT_FIELD_NUMBER = 1;
        private static final Action DEFAULT_INSTANCE;
        public static final int DELETE_ACCOUNT_FIELD_NUMBER = 8;
        public static final int DELETE_KEY_FIELD_NUMBER = 7;
        public static final int DEPLOY_CONTRACT_FIELD_NUMBER = 2;
        public static final int FUNCTION_CALL_FIELD_NUMBER = 3;
        private static volatile Parser<Action> PARSER = null;
        public static final int STAKE_FIELD_NUMBER = 5;
        public static final int TRANSFER_FIELD_NUMBER = 4;
        private int payloadCase_ = 0;
        private Object payload_;

        private Action() {
        }

        /* loaded from: classes7.dex */
        public enum PayloadCase {
            CREATE_ACCOUNT(1),
            DEPLOY_CONTRACT(2),
            FUNCTION_CALL(3),
            TRANSFER(4),
            STAKE(5),
            ADD_KEY(6),
            DELETE_KEY(7),
            DELETE_ACCOUNT(8),
            PAYLOAD_NOT_SET(0);
            
            private final int value;

            PayloadCase(int value) {
                this.value = value;
            }

            @Deprecated
            public static PayloadCase valueOf(int value) {
                return forNumber(value);
            }

            public static PayloadCase forNumber(int value) {
                switch (value) {
                    case 0:
                        return PAYLOAD_NOT_SET;
                    case 1:
                        return CREATE_ACCOUNT;
                    case 2:
                        return DEPLOY_CONTRACT;
                    case 3:
                        return FUNCTION_CALL;
                    case 4:
                        return TRANSFER;
                    case 5:
                        return STAKE;
                    case 6:
                        return ADD_KEY;
                    case 7:
                        return DELETE_KEY;
                    case 8:
                        return DELETE_ACCOUNT;
                    default:
                        return null;
                }
            }

            public int getNumber() {
                return this.value;
            }
        }

        @Override // wallet.core.jni.proto.NEAR.ActionOrBuilder
        public PayloadCase getPayloadCase() {
            return PayloadCase.forNumber(this.payloadCase_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPayload() {
            this.payloadCase_ = 0;
            this.payload_ = null;
        }

        @Override // wallet.core.jni.proto.NEAR.ActionOrBuilder
        public boolean hasCreateAccount() {
            return this.payloadCase_ == 1;
        }

        @Override // wallet.core.jni.proto.NEAR.ActionOrBuilder
        public CreateAccount getCreateAccount() {
            if (this.payloadCase_ == 1) {
                return (CreateAccount) this.payload_;
            }
            return CreateAccount.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCreateAccount(CreateAccount value) {
            value.getClass();
            this.payload_ = value;
            this.payloadCase_ = 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeCreateAccount(CreateAccount value) {
            value.getClass();
            if (this.payloadCase_ == 1 && this.payload_ != CreateAccount.getDefaultInstance()) {
                this.payload_ = CreateAccount.newBuilder((CreateAccount) this.payload_).mergeFrom((CreateAccount.Builder) value).buildPartial();
            } else {
                this.payload_ = value;
            }
            this.payloadCase_ = 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCreateAccount() {
            if (this.payloadCase_ == 1) {
                this.payloadCase_ = 0;
                this.payload_ = null;
            }
        }

        @Override // wallet.core.jni.proto.NEAR.ActionOrBuilder
        public boolean hasDeployContract() {
            return this.payloadCase_ == 2;
        }

        @Override // wallet.core.jni.proto.NEAR.ActionOrBuilder
        public DeployContract getDeployContract() {
            if (this.payloadCase_ == 2) {
                return (DeployContract) this.payload_;
            }
            return DeployContract.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDeployContract(DeployContract value) {
            value.getClass();
            this.payload_ = value;
            this.payloadCase_ = 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeDeployContract(DeployContract value) {
            value.getClass();
            if (this.payloadCase_ == 2 && this.payload_ != DeployContract.getDefaultInstance()) {
                this.payload_ = DeployContract.newBuilder((DeployContract) this.payload_).mergeFrom((DeployContract.Builder) value).buildPartial();
            } else {
                this.payload_ = value;
            }
            this.payloadCase_ = 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDeployContract() {
            if (this.payloadCase_ == 2) {
                this.payloadCase_ = 0;
                this.payload_ = null;
            }
        }

        @Override // wallet.core.jni.proto.NEAR.ActionOrBuilder
        public boolean hasFunctionCall() {
            return this.payloadCase_ == 3;
        }

        @Override // wallet.core.jni.proto.NEAR.ActionOrBuilder
        public FunctionCall getFunctionCall() {
            if (this.payloadCase_ == 3) {
                return (FunctionCall) this.payload_;
            }
            return FunctionCall.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFunctionCall(FunctionCall value) {
            value.getClass();
            this.payload_ = value;
            this.payloadCase_ = 3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeFunctionCall(FunctionCall value) {
            value.getClass();
            if (this.payloadCase_ == 3 && this.payload_ != FunctionCall.getDefaultInstance()) {
                this.payload_ = FunctionCall.newBuilder((FunctionCall) this.payload_).mergeFrom((FunctionCall.Builder) value).buildPartial();
            } else {
                this.payload_ = value;
            }
            this.payloadCase_ = 3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFunctionCall() {
            if (this.payloadCase_ == 3) {
                this.payloadCase_ = 0;
                this.payload_ = null;
            }
        }

        @Override // wallet.core.jni.proto.NEAR.ActionOrBuilder
        public boolean hasTransfer() {
            return this.payloadCase_ == 4;
        }

        @Override // wallet.core.jni.proto.NEAR.ActionOrBuilder
        public Transfer getTransfer() {
            if (this.payloadCase_ == 4) {
                return (Transfer) this.payload_;
            }
            return Transfer.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTransfer(Transfer value) {
            value.getClass();
            this.payload_ = value;
            this.payloadCase_ = 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeTransfer(Transfer value) {
            value.getClass();
            if (this.payloadCase_ == 4 && this.payload_ != Transfer.getDefaultInstance()) {
                this.payload_ = Transfer.newBuilder((Transfer) this.payload_).mergeFrom((Transfer.Builder) value).buildPartial();
            } else {
                this.payload_ = value;
            }
            this.payloadCase_ = 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTransfer() {
            if (this.payloadCase_ == 4) {
                this.payloadCase_ = 0;
                this.payload_ = null;
            }
        }

        @Override // wallet.core.jni.proto.NEAR.ActionOrBuilder
        public boolean hasStake() {
            return this.payloadCase_ == 5;
        }

        @Override // wallet.core.jni.proto.NEAR.ActionOrBuilder
        public Stake getStake() {
            if (this.payloadCase_ == 5) {
                return (Stake) this.payload_;
            }
            return Stake.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStake(Stake value) {
            value.getClass();
            this.payload_ = value;
            this.payloadCase_ = 5;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeStake(Stake value) {
            value.getClass();
            if (this.payloadCase_ == 5 && this.payload_ != Stake.getDefaultInstance()) {
                this.payload_ = Stake.newBuilder((Stake) this.payload_).mergeFrom((Stake.Builder) value).buildPartial();
            } else {
                this.payload_ = value;
            }
            this.payloadCase_ = 5;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStake() {
            if (this.payloadCase_ == 5) {
                this.payloadCase_ = 0;
                this.payload_ = null;
            }
        }

        @Override // wallet.core.jni.proto.NEAR.ActionOrBuilder
        public boolean hasAddKey() {
            return this.payloadCase_ == 6;
        }

        @Override // wallet.core.jni.proto.NEAR.ActionOrBuilder
        public AddKey getAddKey() {
            if (this.payloadCase_ == 6) {
                return (AddKey) this.payload_;
            }
            return AddKey.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAddKey(AddKey value) {
            value.getClass();
            this.payload_ = value;
            this.payloadCase_ = 6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeAddKey(AddKey value) {
            value.getClass();
            if (this.payloadCase_ == 6 && this.payload_ != AddKey.getDefaultInstance()) {
                this.payload_ = AddKey.newBuilder((AddKey) this.payload_).mergeFrom((AddKey.Builder) value).buildPartial();
            } else {
                this.payload_ = value;
            }
            this.payloadCase_ = 6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAddKey() {
            if (this.payloadCase_ == 6) {
                this.payloadCase_ = 0;
                this.payload_ = null;
            }
        }

        @Override // wallet.core.jni.proto.NEAR.ActionOrBuilder
        public boolean hasDeleteKey() {
            return this.payloadCase_ == 7;
        }

        @Override // wallet.core.jni.proto.NEAR.ActionOrBuilder
        public DeleteKey getDeleteKey() {
            if (this.payloadCase_ == 7) {
                return (DeleteKey) this.payload_;
            }
            return DeleteKey.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDeleteKey(DeleteKey value) {
            value.getClass();
            this.payload_ = value;
            this.payloadCase_ = 7;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeDeleteKey(DeleteKey value) {
            value.getClass();
            if (this.payloadCase_ == 7 && this.payload_ != DeleteKey.getDefaultInstance()) {
                this.payload_ = DeleteKey.newBuilder((DeleteKey) this.payload_).mergeFrom((DeleteKey.Builder) value).buildPartial();
            } else {
                this.payload_ = value;
            }
            this.payloadCase_ = 7;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDeleteKey() {
            if (this.payloadCase_ == 7) {
                this.payloadCase_ = 0;
                this.payload_ = null;
            }
        }

        @Override // wallet.core.jni.proto.NEAR.ActionOrBuilder
        public boolean hasDeleteAccount() {
            return this.payloadCase_ == 8;
        }

        @Override // wallet.core.jni.proto.NEAR.ActionOrBuilder
        public DeleteAccount getDeleteAccount() {
            if (this.payloadCase_ == 8) {
                return (DeleteAccount) this.payload_;
            }
            return DeleteAccount.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDeleteAccount(DeleteAccount value) {
            value.getClass();
            this.payload_ = value;
            this.payloadCase_ = 8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeDeleteAccount(DeleteAccount value) {
            value.getClass();
            if (this.payloadCase_ == 8 && this.payload_ != DeleteAccount.getDefaultInstance()) {
                this.payload_ = DeleteAccount.newBuilder((DeleteAccount) this.payload_).mergeFrom((DeleteAccount.Builder) value).buildPartial();
            } else {
                this.payload_ = value;
            }
            this.payloadCase_ = 8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDeleteAccount() {
            if (this.payloadCase_ == 8) {
                this.payloadCase_ = 0;
                this.payload_ = null;
            }
        }

        public static Action parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (Action) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Action parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Action) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Action parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (Action) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Action parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Action) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Action parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (Action) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Action parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Action) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Action parseFrom(InputStream input) throws IOException {
            return (Action) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Action parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Action) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Action parseDelimitedFrom(InputStream input) throws IOException {
            return (Action) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static Action parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Action) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Action parseFrom(CodedInputStream input) throws IOException {
            return (Action) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Action parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Action) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(Action prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<Action, Builder> implements ActionOrBuilder {
            /* synthetic */ Builder(C77511 c77511) {
                this();
            }

            private Builder() {
                super(Action.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.NEAR.ActionOrBuilder
            public PayloadCase getPayloadCase() {
                return ((Action) this.instance).getPayloadCase();
            }

            public Builder clearPayload() {
                copyOnWrite();
                ((Action) this.instance).clearPayload();
                return this;
            }

            @Override // wallet.core.jni.proto.NEAR.ActionOrBuilder
            public boolean hasCreateAccount() {
                return ((Action) this.instance).hasCreateAccount();
            }

            @Override // wallet.core.jni.proto.NEAR.ActionOrBuilder
            public CreateAccount getCreateAccount() {
                return ((Action) this.instance).getCreateAccount();
            }

            public Builder setCreateAccount(CreateAccount value) {
                copyOnWrite();
                ((Action) this.instance).setCreateAccount(value);
                return this;
            }

            public Builder setCreateAccount(CreateAccount.Builder builderForValue) {
                copyOnWrite();
                ((Action) this.instance).setCreateAccount(builderForValue.build());
                return this;
            }

            public Builder mergeCreateAccount(CreateAccount value) {
                copyOnWrite();
                ((Action) this.instance).mergeCreateAccount(value);
                return this;
            }

            public Builder clearCreateAccount() {
                copyOnWrite();
                ((Action) this.instance).clearCreateAccount();
                return this;
            }

            @Override // wallet.core.jni.proto.NEAR.ActionOrBuilder
            public boolean hasDeployContract() {
                return ((Action) this.instance).hasDeployContract();
            }

            @Override // wallet.core.jni.proto.NEAR.ActionOrBuilder
            public DeployContract getDeployContract() {
                return ((Action) this.instance).getDeployContract();
            }

            public Builder setDeployContract(DeployContract value) {
                copyOnWrite();
                ((Action) this.instance).setDeployContract(value);
                return this;
            }

            public Builder setDeployContract(DeployContract.Builder builderForValue) {
                copyOnWrite();
                ((Action) this.instance).setDeployContract(builderForValue.build());
                return this;
            }

            public Builder mergeDeployContract(DeployContract value) {
                copyOnWrite();
                ((Action) this.instance).mergeDeployContract(value);
                return this;
            }

            public Builder clearDeployContract() {
                copyOnWrite();
                ((Action) this.instance).clearDeployContract();
                return this;
            }

            @Override // wallet.core.jni.proto.NEAR.ActionOrBuilder
            public boolean hasFunctionCall() {
                return ((Action) this.instance).hasFunctionCall();
            }

            @Override // wallet.core.jni.proto.NEAR.ActionOrBuilder
            public FunctionCall getFunctionCall() {
                return ((Action) this.instance).getFunctionCall();
            }

            public Builder setFunctionCall(FunctionCall value) {
                copyOnWrite();
                ((Action) this.instance).setFunctionCall(value);
                return this;
            }

            public Builder setFunctionCall(FunctionCall.Builder builderForValue) {
                copyOnWrite();
                ((Action) this.instance).setFunctionCall(builderForValue.build());
                return this;
            }

            public Builder mergeFunctionCall(FunctionCall value) {
                copyOnWrite();
                ((Action) this.instance).mergeFunctionCall(value);
                return this;
            }

            public Builder clearFunctionCall() {
                copyOnWrite();
                ((Action) this.instance).clearFunctionCall();
                return this;
            }

            @Override // wallet.core.jni.proto.NEAR.ActionOrBuilder
            public boolean hasTransfer() {
                return ((Action) this.instance).hasTransfer();
            }

            @Override // wallet.core.jni.proto.NEAR.ActionOrBuilder
            public Transfer getTransfer() {
                return ((Action) this.instance).getTransfer();
            }

            public Builder setTransfer(Transfer value) {
                copyOnWrite();
                ((Action) this.instance).setTransfer(value);
                return this;
            }

            public Builder setTransfer(Transfer.Builder builderForValue) {
                copyOnWrite();
                ((Action) this.instance).setTransfer(builderForValue.build());
                return this;
            }

            public Builder mergeTransfer(Transfer value) {
                copyOnWrite();
                ((Action) this.instance).mergeTransfer(value);
                return this;
            }

            public Builder clearTransfer() {
                copyOnWrite();
                ((Action) this.instance).clearTransfer();
                return this;
            }

            @Override // wallet.core.jni.proto.NEAR.ActionOrBuilder
            public boolean hasStake() {
                return ((Action) this.instance).hasStake();
            }

            @Override // wallet.core.jni.proto.NEAR.ActionOrBuilder
            public Stake getStake() {
                return ((Action) this.instance).getStake();
            }

            public Builder setStake(Stake value) {
                copyOnWrite();
                ((Action) this.instance).setStake(value);
                return this;
            }

            public Builder setStake(Stake.Builder builderForValue) {
                copyOnWrite();
                ((Action) this.instance).setStake(builderForValue.build());
                return this;
            }

            public Builder mergeStake(Stake value) {
                copyOnWrite();
                ((Action) this.instance).mergeStake(value);
                return this;
            }

            public Builder clearStake() {
                copyOnWrite();
                ((Action) this.instance).clearStake();
                return this;
            }

            @Override // wallet.core.jni.proto.NEAR.ActionOrBuilder
            public boolean hasAddKey() {
                return ((Action) this.instance).hasAddKey();
            }

            @Override // wallet.core.jni.proto.NEAR.ActionOrBuilder
            public AddKey getAddKey() {
                return ((Action) this.instance).getAddKey();
            }

            public Builder setAddKey(AddKey value) {
                copyOnWrite();
                ((Action) this.instance).setAddKey(value);
                return this;
            }

            public Builder setAddKey(AddKey.Builder builderForValue) {
                copyOnWrite();
                ((Action) this.instance).setAddKey(builderForValue.build());
                return this;
            }

            public Builder mergeAddKey(AddKey value) {
                copyOnWrite();
                ((Action) this.instance).mergeAddKey(value);
                return this;
            }

            public Builder clearAddKey() {
                copyOnWrite();
                ((Action) this.instance).clearAddKey();
                return this;
            }

            @Override // wallet.core.jni.proto.NEAR.ActionOrBuilder
            public boolean hasDeleteKey() {
                return ((Action) this.instance).hasDeleteKey();
            }

            @Override // wallet.core.jni.proto.NEAR.ActionOrBuilder
            public DeleteKey getDeleteKey() {
                return ((Action) this.instance).getDeleteKey();
            }

            public Builder setDeleteKey(DeleteKey value) {
                copyOnWrite();
                ((Action) this.instance).setDeleteKey(value);
                return this;
            }

            public Builder setDeleteKey(DeleteKey.Builder builderForValue) {
                copyOnWrite();
                ((Action) this.instance).setDeleteKey(builderForValue.build());
                return this;
            }

            public Builder mergeDeleteKey(DeleteKey value) {
                copyOnWrite();
                ((Action) this.instance).mergeDeleteKey(value);
                return this;
            }

            public Builder clearDeleteKey() {
                copyOnWrite();
                ((Action) this.instance).clearDeleteKey();
                return this;
            }

            @Override // wallet.core.jni.proto.NEAR.ActionOrBuilder
            public boolean hasDeleteAccount() {
                return ((Action) this.instance).hasDeleteAccount();
            }

            @Override // wallet.core.jni.proto.NEAR.ActionOrBuilder
            public DeleteAccount getDeleteAccount() {
                return ((Action) this.instance).getDeleteAccount();
            }

            public Builder setDeleteAccount(DeleteAccount value) {
                copyOnWrite();
                ((Action) this.instance).setDeleteAccount(value);
                return this;
            }

            public Builder setDeleteAccount(DeleteAccount.Builder builderForValue) {
                copyOnWrite();
                ((Action) this.instance).setDeleteAccount(builderForValue.build());
                return this;
            }

            public Builder mergeDeleteAccount(DeleteAccount value) {
                copyOnWrite();
                ((Action) this.instance).mergeDeleteAccount(value);
                return this;
            }

            public Builder clearDeleteAccount() {
                copyOnWrite();
                ((Action) this.instance).clearDeleteAccount();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77511.f2144xa1df5c61[method.ordinal()]) {
                case 1:
                    return new Action();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\b\u0001\u0000\u0001\b\b\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006<\u0000\u0007<\u0000\b<\u0000", new Object[]{"payload_", "payloadCase_", CreateAccount.class, DeployContract.class, FunctionCall.class, Transfer.class, Stake.class, AddKey.class, DeleteKey.class, DeleteAccount.class});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<Action> parser = PARSER;
                    if (parser == null) {
                        synchronized (Action.class) {
                            parser = PARSER;
                            if (parser == null) {
                                parser = new GeneratedMessageLite.DefaultInstanceBasedParser<>(DEFAULT_INSTANCE);
                                PARSER = parser;
                            }
                        }
                    }
                    return parser;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        static {
            Action action = new Action();
            DEFAULT_INSTANCE = action;
            GeneratedMessageLite.registerDefaultInstance(Action.class, action);
        }

        public static Action getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Action> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class SigningInput extends GeneratedMessageLite<SigningInput, Builder> implements SigningInputOrBuilder {
        public static final int ACTIONS_FIELD_NUMBER = 5;
        public static final int BLOCK_HASH_FIELD_NUMBER = 4;
        private static final SigningInput DEFAULT_INSTANCE;
        public static final int NONCE_FIELD_NUMBER = 2;
        private static volatile Parser<SigningInput> PARSER = null;
        public static final int PRIVATE_KEY_FIELD_NUMBER = 6;
        public static final int RECEIVER_ID_FIELD_NUMBER = 3;
        public static final int SIGNER_ID_FIELD_NUMBER = 1;
        private Internal.ProtobufList<Action> actions_;
        private ByteString blockHash_;
        private long nonce_;
        private ByteString privateKey_;
        private String signerId_ = "";
        private String receiverId_ = "";

        private SigningInput() {
            ByteString byteString = ByteString.EMPTY;
            this.blockHash_ = byteString;
            this.actions_ = GeneratedMessageLite.emptyProtobufList();
            this.privateKey_ = byteString;
        }

        @Override // wallet.core.jni.proto.NEAR.SigningInputOrBuilder
        public String getSignerId() {
            return this.signerId_;
        }

        @Override // wallet.core.jni.proto.NEAR.SigningInputOrBuilder
        public ByteString getSignerIdBytes() {
            return ByteString.copyFromUtf8(this.signerId_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSignerId(String value) {
            value.getClass();
            this.signerId_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSignerId() {
            this.signerId_ = getDefaultInstance().getSignerId();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSignerIdBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.signerId_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.NEAR.SigningInputOrBuilder
        public long getNonce() {
            return this.nonce_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setNonce(long value) {
            this.nonce_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearNonce() {
            this.nonce_ = 0L;
        }

        @Override // wallet.core.jni.proto.NEAR.SigningInputOrBuilder
        public String getReceiverId() {
            return this.receiverId_;
        }

        @Override // wallet.core.jni.proto.NEAR.SigningInputOrBuilder
        public ByteString getReceiverIdBytes() {
            return ByteString.copyFromUtf8(this.receiverId_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setReceiverId(String value) {
            value.getClass();
            this.receiverId_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearReceiverId() {
            this.receiverId_ = getDefaultInstance().getReceiverId();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setReceiverIdBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.receiverId_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.NEAR.SigningInputOrBuilder
        public ByteString getBlockHash() {
            return this.blockHash_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setBlockHash(ByteString value) {
            value.getClass();
            this.blockHash_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearBlockHash() {
            this.blockHash_ = getDefaultInstance().getBlockHash();
        }

        @Override // wallet.core.jni.proto.NEAR.SigningInputOrBuilder
        public List<Action> getActionsList() {
            return this.actions_;
        }

        public List<? extends ActionOrBuilder> getActionsOrBuilderList() {
            return this.actions_;
        }

        @Override // wallet.core.jni.proto.NEAR.SigningInputOrBuilder
        public int getActionsCount() {
            return this.actions_.size();
        }

        @Override // wallet.core.jni.proto.NEAR.SigningInputOrBuilder
        public Action getActions(int index) {
            return this.actions_.get(index);
        }

        public ActionOrBuilder getActionsOrBuilder(int index) {
            return this.actions_.get(index);
        }

        private void ensureActionsIsMutable() {
            Internal.ProtobufList<Action> protobufList = this.actions_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.actions_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setActions(int index, Action value) {
            value.getClass();
            ensureActionsIsMutable();
            this.actions_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addActions(Action value) {
            value.getClass();
            ensureActionsIsMutable();
            this.actions_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addActions(int index, Action value) {
            value.getClass();
            ensureActionsIsMutable();
            this.actions_.add(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllActions(Iterable<? extends Action> values) {
            ensureActionsIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.actions_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearActions() {
            this.actions_ = GeneratedMessageLite.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeActions(int index) {
            ensureActionsIsMutable();
            this.actions_.remove(index);
        }

        @Override // wallet.core.jni.proto.NEAR.SigningInputOrBuilder
        public ByteString getPrivateKey() {
            return this.privateKey_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPrivateKey(ByteString value) {
            value.getClass();
            this.privateKey_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPrivateKey() {
            this.privateKey_ = getDefaultInstance().getPrivateKey();
        }

        public static SigningInput parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (SigningInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SigningInput parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SigningInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SigningInput parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (SigningInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SigningInput parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SigningInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SigningInput parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (SigningInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SigningInput parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SigningInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SigningInput parseFrom(InputStream input) throws IOException {
            return (SigningInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static SigningInput parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SigningInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static SigningInput parseDelimitedFrom(InputStream input) throws IOException {
            return (SigningInput) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static SigningInput parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SigningInput) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static SigningInput parseFrom(CodedInputStream input) throws IOException {
            return (SigningInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static SigningInput parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SigningInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(SigningInput prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<SigningInput, Builder> implements SigningInputOrBuilder {
            /* synthetic */ Builder(C77511 c77511) {
                this();
            }

            private Builder() {
                super(SigningInput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.NEAR.SigningInputOrBuilder
            public String getSignerId() {
                return ((SigningInput) this.instance).getSignerId();
            }

            @Override // wallet.core.jni.proto.NEAR.SigningInputOrBuilder
            public ByteString getSignerIdBytes() {
                return ((SigningInput) this.instance).getSignerIdBytes();
            }

            public Builder setSignerId(String value) {
                copyOnWrite();
                ((SigningInput) this.instance).setSignerId(value);
                return this;
            }

            public Builder clearSignerId() {
                copyOnWrite();
                ((SigningInput) this.instance).clearSignerId();
                return this;
            }

            public Builder setSignerIdBytes(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setSignerIdBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.NEAR.SigningInputOrBuilder
            public long getNonce() {
                return ((SigningInput) this.instance).getNonce();
            }

            public Builder setNonce(long value) {
                copyOnWrite();
                ((SigningInput) this.instance).setNonce(value);
                return this;
            }

            public Builder clearNonce() {
                copyOnWrite();
                ((SigningInput) this.instance).clearNonce();
                return this;
            }

            @Override // wallet.core.jni.proto.NEAR.SigningInputOrBuilder
            public String getReceiverId() {
                return ((SigningInput) this.instance).getReceiverId();
            }

            @Override // wallet.core.jni.proto.NEAR.SigningInputOrBuilder
            public ByteString getReceiverIdBytes() {
                return ((SigningInput) this.instance).getReceiverIdBytes();
            }

            public Builder setReceiverId(String value) {
                copyOnWrite();
                ((SigningInput) this.instance).setReceiverId(value);
                return this;
            }

            public Builder clearReceiverId() {
                copyOnWrite();
                ((SigningInput) this.instance).clearReceiverId();
                return this;
            }

            public Builder setReceiverIdBytes(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setReceiverIdBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.NEAR.SigningInputOrBuilder
            public ByteString getBlockHash() {
                return ((SigningInput) this.instance).getBlockHash();
            }

            public Builder setBlockHash(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setBlockHash(value);
                return this;
            }

            public Builder clearBlockHash() {
                copyOnWrite();
                ((SigningInput) this.instance).clearBlockHash();
                return this;
            }

            @Override // wallet.core.jni.proto.NEAR.SigningInputOrBuilder
            public List<Action> getActionsList() {
                return Collections.unmodifiableList(((SigningInput) this.instance).getActionsList());
            }

            @Override // wallet.core.jni.proto.NEAR.SigningInputOrBuilder
            public int getActionsCount() {
                return ((SigningInput) this.instance).getActionsCount();
            }

            @Override // wallet.core.jni.proto.NEAR.SigningInputOrBuilder
            public Action getActions(int index) {
                return ((SigningInput) this.instance).getActions(index);
            }

            public Builder setActions(int index, Action value) {
                copyOnWrite();
                ((SigningInput) this.instance).setActions(index, value);
                return this;
            }

            public Builder setActions(int index, Action.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setActions(index, builderForValue.build());
                return this;
            }

            public Builder addActions(Action value) {
                copyOnWrite();
                ((SigningInput) this.instance).addActions(value);
                return this;
            }

            public Builder addActions(int index, Action value) {
                copyOnWrite();
                ((SigningInput) this.instance).addActions(index, value);
                return this;
            }

            public Builder addActions(Action.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).addActions(builderForValue.build());
                return this;
            }

            public Builder addActions(int index, Action.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).addActions(index, builderForValue.build());
                return this;
            }

            public Builder addAllActions(Iterable<? extends Action> values) {
                copyOnWrite();
                ((SigningInput) this.instance).addAllActions(values);
                return this;
            }

            public Builder clearActions() {
                copyOnWrite();
                ((SigningInput) this.instance).clearActions();
                return this;
            }

            public Builder removeActions(int index) {
                copyOnWrite();
                ((SigningInput) this.instance).removeActions(index);
                return this;
            }

            @Override // wallet.core.jni.proto.NEAR.SigningInputOrBuilder
            public ByteString getPrivateKey() {
                return ((SigningInput) this.instance).getPrivateKey();
            }

            public Builder setPrivateKey(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setPrivateKey(value);
                return this;
            }

            public Builder clearPrivateKey() {
                copyOnWrite();
                ((SigningInput) this.instance).clearPrivateKey();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77511.f2144xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningInput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0001\u0000\u0001Ȉ\u0002\u0003\u0003Ȉ\u0004\n\u0005\u001b\u0006\n", new Object[]{"signerId_", "nonce_", "receiverId_", "blockHash_", "actions_", Action.class, "privateKey_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<SigningInput> parser = PARSER;
                    if (parser == null) {
                        synchronized (SigningInput.class) {
                            parser = PARSER;
                            if (parser == null) {
                                parser = new GeneratedMessageLite.DefaultInstanceBasedParser<>(DEFAULT_INSTANCE);
                                PARSER = parser;
                            }
                        }
                    }
                    return parser;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        static {
            SigningInput signingInput = new SigningInput();
            DEFAULT_INSTANCE = signingInput;
            GeneratedMessageLite.registerDefaultInstance(SigningInput.class, signingInput);
        }

        public static SigningInput getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<SigningInput> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class SigningOutput extends GeneratedMessageLite<SigningOutput, Builder> implements SigningOutputOrBuilder {
        private static final SigningOutput DEFAULT_INSTANCE;
        public static final int HASH_FIELD_NUMBER = 2;
        private static volatile Parser<SigningOutput> PARSER = null;
        public static final int SIGNED_TRANSACTION_FIELD_NUMBER = 1;
        private ByteString hash_;
        private ByteString signedTransaction_;

        private SigningOutput() {
            ByteString byteString = ByteString.EMPTY;
            this.signedTransaction_ = byteString;
            this.hash_ = byteString;
        }

        @Override // wallet.core.jni.proto.NEAR.SigningOutputOrBuilder
        public ByteString getSignedTransaction() {
            return this.signedTransaction_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSignedTransaction(ByteString value) {
            value.getClass();
            this.signedTransaction_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSignedTransaction() {
            this.signedTransaction_ = getDefaultInstance().getSignedTransaction();
        }

        @Override // wallet.core.jni.proto.NEAR.SigningOutputOrBuilder
        public ByteString getHash() {
            return this.hash_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setHash(ByteString value) {
            value.getClass();
            this.hash_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearHash() {
            this.hash_ = getDefaultInstance().getHash();
        }

        public static SigningOutput parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (SigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SigningOutput parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SigningOutput parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (SigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SigningOutput parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SigningOutput parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (SigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SigningOutput parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SigningOutput parseFrom(InputStream input) throws IOException {
            return (SigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static SigningOutput parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static SigningOutput parseDelimitedFrom(InputStream input) throws IOException {
            return (SigningOutput) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static SigningOutput parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SigningOutput) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static SigningOutput parseFrom(CodedInputStream input) throws IOException {
            return (SigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static SigningOutput parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(SigningOutput prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<SigningOutput, Builder> implements SigningOutputOrBuilder {
            /* synthetic */ Builder(C77511 c77511) {
                this();
            }

            private Builder() {
                super(SigningOutput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.NEAR.SigningOutputOrBuilder
            public ByteString getSignedTransaction() {
                return ((SigningOutput) this.instance).getSignedTransaction();
            }

            public Builder setSignedTransaction(ByteString value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setSignedTransaction(value);
                return this;
            }

            public Builder clearSignedTransaction() {
                copyOnWrite();
                ((SigningOutput) this.instance).clearSignedTransaction();
                return this;
            }

            @Override // wallet.core.jni.proto.NEAR.SigningOutputOrBuilder
            public ByteString getHash() {
                return ((SigningOutput) this.instance).getHash();
            }

            public Builder setHash(ByteString value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setHash(value);
                return this;
            }

            public Builder clearHash() {
                copyOnWrite();
                ((SigningOutput) this.instance).clearHash();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77511.f2144xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningOutput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0002\n", new Object[]{"signedTransaction_", "hash_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<SigningOutput> parser = PARSER;
                    if (parser == null) {
                        synchronized (SigningOutput.class) {
                            parser = PARSER;
                            if (parser == null) {
                                parser = new GeneratedMessageLite.DefaultInstanceBasedParser<>(DEFAULT_INSTANCE);
                                PARSER = parser;
                            }
                        }
                    }
                    return parser;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        static {
            SigningOutput signingOutput = new SigningOutput();
            DEFAULT_INSTANCE = signingOutput;
            GeneratedMessageLite.registerDefaultInstance(SigningOutput.class, signingOutput);
        }

        public static SigningOutput getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<SigningOutput> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }
}
