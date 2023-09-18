package com.google.firestore.p021v1;

import com.google.firestore.p021v1.ArrayValue;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Internal;
import com.google.protobuf.MessageLiteOrBuilder;
import com.google.protobuf.Parser;
import java.util.List;
/* renamed from: com.google.firestore.v1.DocumentTransform */
/* loaded from: classes4.dex */
public final class DocumentTransform extends GeneratedMessageLite<DocumentTransform, Builder> implements MessageLiteOrBuilder {
    private static final DocumentTransform DEFAULT_INSTANCE;
    public static final int DOCUMENT_FIELD_NUMBER = 1;
    public static final int FIELD_TRANSFORMS_FIELD_NUMBER = 2;
    private static volatile Parser<DocumentTransform> PARSER;
    private String document_ = "";
    private Internal.ProtobufList<FieldTransform> fieldTransforms_ = GeneratedMessageLite.emptyProtobufList();

    private DocumentTransform() {
    }

    /* renamed from: com.google.firestore.v1.DocumentTransform$FieldTransform */
    /* loaded from: classes4.dex */
    public static final class FieldTransform extends GeneratedMessageLite<FieldTransform, Builder> implements MessageLiteOrBuilder {
        public static final int APPEND_MISSING_ELEMENTS_FIELD_NUMBER = 6;
        private static final FieldTransform DEFAULT_INSTANCE;
        public static final int FIELD_PATH_FIELD_NUMBER = 1;
        public static final int INCREMENT_FIELD_NUMBER = 3;
        public static final int MAXIMUM_FIELD_NUMBER = 4;
        public static final int MINIMUM_FIELD_NUMBER = 5;
        private static volatile Parser<FieldTransform> PARSER = null;
        public static final int REMOVE_ALL_FROM_ARRAY_FIELD_NUMBER = 7;
        public static final int SET_TO_SERVER_VALUE_FIELD_NUMBER = 2;
        private Object transformType_;
        private int transformTypeCase_ = 0;
        private String fieldPath_ = "";

        private FieldTransform() {
        }

        /* renamed from: com.google.firestore.v1.DocumentTransform$FieldTransform$ServerValue */
        /* loaded from: classes4.dex */
        public enum ServerValue implements Internal.EnumLite {
            SERVER_VALUE_UNSPECIFIED(0),
            REQUEST_TIME(1),
            UNRECOGNIZED(-1);
            
            public static final int REQUEST_TIME_VALUE = 1;
            public static final int SERVER_VALUE_UNSPECIFIED_VALUE = 0;
            private static final Internal.EnumLiteMap<ServerValue> internalValueMap = new Internal.EnumLiteMap<ServerValue>() { // from class: com.google.firestore.v1.DocumentTransform.FieldTransform.ServerValue.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.google.protobuf.Internal.EnumLiteMap
                public ServerValue findValueByNumber(int i) {
                    return ServerValue.forNumber(i);
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
            public static ServerValue valueOf(int i) {
                return forNumber(i);
            }

            public static ServerValue forNumber(int i) {
                if (i != 0) {
                    if (i != 1) {
                        return null;
                    }
                    return REQUEST_TIME;
                }
                return SERVER_VALUE_UNSPECIFIED;
            }

            public static Internal.EnumLiteMap<ServerValue> internalGetValueMap() {
                return internalValueMap;
            }

            public static Internal.EnumVerifier internalGetVerifier() {
                return ServerValueVerifier.INSTANCE;
            }

            /* renamed from: com.google.firestore.v1.DocumentTransform$FieldTransform$ServerValue$ServerValueVerifier */
            /* loaded from: classes4.dex */
            private static final class ServerValueVerifier implements Internal.EnumVerifier {
                static final Internal.EnumVerifier INSTANCE = new ServerValueVerifier();

                private ServerValueVerifier() {
                }

                @Override // com.google.protobuf.Internal.EnumVerifier
                public boolean isInRange(int i) {
                    return ServerValue.forNumber(i) != null;
                }
            }

            ServerValue(int i) {
                this.value = i;
            }
        }

        /* renamed from: com.google.firestore.v1.DocumentTransform$FieldTransform$TransformTypeCase */
        /* loaded from: classes4.dex */
        public enum TransformTypeCase {
            SET_TO_SERVER_VALUE(2),
            INCREMENT(3),
            MAXIMUM(4),
            MINIMUM(5),
            APPEND_MISSING_ELEMENTS(6),
            REMOVE_ALL_FROM_ARRAY(7),
            TRANSFORMTYPE_NOT_SET(0);
            
            private final int value;

            TransformTypeCase(int i) {
                this.value = i;
            }

            @Deprecated
            public static TransformTypeCase valueOf(int i) {
                return forNumber(i);
            }

            public static TransformTypeCase forNumber(int i) {
                if (i != 0) {
                    switch (i) {
                        case 2:
                            return SET_TO_SERVER_VALUE;
                        case 3:
                            return INCREMENT;
                        case 4:
                            return MAXIMUM;
                        case 5:
                            return MINIMUM;
                        case 6:
                            return APPEND_MISSING_ELEMENTS;
                        case 7:
                            return REMOVE_ALL_FROM_ARRAY;
                        default:
                            return null;
                    }
                }
                return TRANSFORMTYPE_NOT_SET;
            }

            public int getNumber() {
                return this.value;
            }
        }

        public TransformTypeCase getTransformTypeCase() {
            return TransformTypeCase.forNumber(this.transformTypeCase_);
        }

        public String getFieldPath() {
            return this.fieldPath_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFieldPath(String str) {
            str.getClass();
            this.fieldPath_ = str;
        }

        public ServerValue getSetToServerValue() {
            if (this.transformTypeCase_ == 2) {
                ServerValue forNumber = ServerValue.forNumber(((Integer) this.transformType_).intValue());
                return forNumber == null ? ServerValue.UNRECOGNIZED : forNumber;
            }
            return ServerValue.SERVER_VALUE_UNSPECIFIED;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSetToServerValue(ServerValue serverValue) {
            this.transformType_ = Integer.valueOf(serverValue.getNumber());
            this.transformTypeCase_ = 2;
        }

        public Value getIncrement() {
            if (this.transformTypeCase_ == 3) {
                return (Value) this.transformType_;
            }
            return Value.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setIncrement(Value value) {
            value.getClass();
            this.transformType_ = value;
            this.transformTypeCase_ = 3;
        }

        public ArrayValue getAppendMissingElements() {
            if (this.transformTypeCase_ == 6) {
                return (ArrayValue) this.transformType_;
            }
            return ArrayValue.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAppendMissingElements(ArrayValue arrayValue) {
            arrayValue.getClass();
            this.transformType_ = arrayValue;
            this.transformTypeCase_ = 6;
        }

        public ArrayValue getRemoveAllFromArray() {
            if (this.transformTypeCase_ == 7) {
                return (ArrayValue) this.transformType_;
            }
            return ArrayValue.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRemoveAllFromArray(ArrayValue arrayValue) {
            arrayValue.getClass();
            this.transformType_ = arrayValue;
            this.transformTypeCase_ = 7;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        /* renamed from: com.google.firestore.v1.DocumentTransform$FieldTransform$Builder */
        /* loaded from: classes4.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<FieldTransform, Builder> implements MessageLiteOrBuilder {
            /* synthetic */ Builder(C10611 c10611) {
                this();
            }

            private Builder() {
                super(FieldTransform.DEFAULT_INSTANCE);
            }

            public Builder setFieldPath(String str) {
                copyOnWrite();
                ((FieldTransform) this.instance).setFieldPath(str);
                return this;
            }

            public Builder setSetToServerValue(ServerValue serverValue) {
                copyOnWrite();
                ((FieldTransform) this.instance).setSetToServerValue(serverValue);
                return this;
            }

            public Builder setIncrement(Value value) {
                copyOnWrite();
                ((FieldTransform) this.instance).setIncrement(value);
                return this;
            }

            public Builder setAppendMissingElements(ArrayValue.Builder builder) {
                copyOnWrite();
                ((FieldTransform) this.instance).setAppendMissingElements(builder.build());
                return this;
            }

            public Builder setRemoveAllFromArray(ArrayValue.Builder builder) {
                copyOnWrite();
                ((FieldTransform) this.instance).setRemoveAllFromArray(builder.build());
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
            switch (C10611.f292xa1df5c61[methodToInvoke.ordinal()]) {
                case 1:
                    return new FieldTransform();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0007\u0001\u0000\u0001\u0007\u0007\u0000\u0000\u0000\u0001Ȉ\u0002?\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006<\u0000\u0007<\u0000", new Object[]{"transformType_", "transformTypeCase_", "fieldPath_", Value.class, Value.class, Value.class, ArrayValue.class, ArrayValue.class});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<FieldTransform> parser = PARSER;
                    if (parser == null) {
                        synchronized (FieldTransform.class) {
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
            FieldTransform fieldTransform = new FieldTransform();
            DEFAULT_INSTANCE = fieldTransform;
            GeneratedMessageLite.registerDefaultInstance(FieldTransform.class, fieldTransform);
        }
    }

    /* renamed from: com.google.firestore.v1.DocumentTransform$1 */
    /* loaded from: classes4.dex */
    static /* synthetic */ class C10611 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f292xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f292xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f292xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f292xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f292xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f292xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f292xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f292xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public List<FieldTransform> getFieldTransformsList() {
        return this.fieldTransforms_;
    }

    /* renamed from: com.google.firestore.v1.DocumentTransform$Builder */
    /* loaded from: classes4.dex */
    public static final class Builder extends GeneratedMessageLite.Builder<DocumentTransform, Builder> implements MessageLiteOrBuilder {
        /* synthetic */ Builder(C10611 c10611) {
            this();
        }

        private Builder() {
            super(DocumentTransform.DEFAULT_INSTANCE);
        }
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C10611.f292xa1df5c61[methodToInvoke.ordinal()]) {
            case 1:
                return new DocumentTransform();
            case 2:
                return new Builder(null);
            case 3:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001Ȉ\u0002\u001b", new Object[]{"document_", "fieldTransforms_", FieldTransform.class});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                Parser<DocumentTransform> parser = PARSER;
                if (parser == null) {
                    synchronized (DocumentTransform.class) {
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
        DocumentTransform documentTransform = new DocumentTransform();
        DEFAULT_INSTANCE = documentTransform;
        GeneratedMessageLite.registerDefaultInstance(DocumentTransform.class, documentTransform);
    }

    public static DocumentTransform getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }
}
