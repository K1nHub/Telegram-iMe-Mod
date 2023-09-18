package com.google.firestore.p021v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Internal;
import com.google.protobuf.MessageLiteOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.Timestamp;
import com.google.rpc.Status;
import java.util.List;
/* renamed from: com.google.firestore.v1.TargetChange */
/* loaded from: classes4.dex */
public final class TargetChange extends GeneratedMessageLite<TargetChange, Builder> implements MessageLiteOrBuilder {
    public static final int CAUSE_FIELD_NUMBER = 3;
    private static final TargetChange DEFAULT_INSTANCE;
    private static volatile Parser<TargetChange> PARSER = null;
    public static final int READ_TIME_FIELD_NUMBER = 6;
    public static final int RESUME_TOKEN_FIELD_NUMBER = 4;
    public static final int TARGET_CHANGE_TYPE_FIELD_NUMBER = 1;
    public static final int TARGET_IDS_FIELD_NUMBER = 2;
    private Status cause_;
    private Timestamp readTime_;
    private int targetChangeType_;
    private int targetIdsMemoizedSerializedSize = -1;
    private Internal.IntList targetIds_ = GeneratedMessageLite.emptyIntList();
    private ByteString resumeToken_ = ByteString.EMPTY;

    private TargetChange() {
    }

    /* renamed from: com.google.firestore.v1.TargetChange$TargetChangeType */
    /* loaded from: classes4.dex */
    public enum TargetChangeType implements Internal.EnumLite {
        NO_CHANGE(0),
        ADD(1),
        REMOVE(2),
        CURRENT(3),
        RESET(4),
        UNRECOGNIZED(-1);
        
        public static final int ADD_VALUE = 1;
        public static final int CURRENT_VALUE = 3;
        public static final int NO_CHANGE_VALUE = 0;
        public static final int REMOVE_VALUE = 2;
        public static final int RESET_VALUE = 4;
        private static final Internal.EnumLiteMap<TargetChangeType> internalValueMap = new Internal.EnumLiteMap<TargetChangeType>() { // from class: com.google.firestore.v1.TargetChange.TargetChangeType.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public TargetChangeType findValueByNumber(int i) {
                return TargetChangeType.forNumber(i);
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
        public static TargetChangeType valueOf(int i) {
            return forNumber(i);
        }

        public static TargetChangeType forNumber(int i) {
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            if (i != 4) {
                                return null;
                            }
                            return RESET;
                        }
                        return CURRENT;
                    }
                    return REMOVE;
                }
                return ADD;
            }
            return NO_CHANGE;
        }

        public static Internal.EnumLiteMap<TargetChangeType> internalGetValueMap() {
            return internalValueMap;
        }

        public static Internal.EnumVerifier internalGetVerifier() {
            return TargetChangeTypeVerifier.INSTANCE;
        }

        /* renamed from: com.google.firestore.v1.TargetChange$TargetChangeType$TargetChangeTypeVerifier */
        /* loaded from: classes4.dex */
        private static final class TargetChangeTypeVerifier implements Internal.EnumVerifier {
            static final Internal.EnumVerifier INSTANCE = new TargetChangeTypeVerifier();

            private TargetChangeTypeVerifier() {
            }

            @Override // com.google.protobuf.Internal.EnumVerifier
            public boolean isInRange(int i) {
                return TargetChangeType.forNumber(i) != null;
            }
        }

        TargetChangeType(int i) {
            this.value = i;
        }
    }

    public TargetChangeType getTargetChangeType() {
        TargetChangeType forNumber = TargetChangeType.forNumber(this.targetChangeType_);
        return forNumber == null ? TargetChangeType.UNRECOGNIZED : forNumber;
    }

    public List<Integer> getTargetIdsList() {
        return this.targetIds_;
    }

    public int getTargetIdsCount() {
        return this.targetIds_.size();
    }

    public Status getCause() {
        Status status = this.cause_;
        return status == null ? Status.getDefaultInstance() : status;
    }

    public ByteString getResumeToken() {
        return this.resumeToken_;
    }

    public Timestamp getReadTime() {
        Timestamp timestamp = this.readTime_;
        return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
    }

    /* renamed from: com.google.firestore.v1.TargetChange$Builder */
    /* loaded from: classes4.dex */
    public static final class Builder extends GeneratedMessageLite.Builder<TargetChange, Builder> implements MessageLiteOrBuilder {
        /* synthetic */ Builder(C10751 c10751) {
            this();
        }

        private Builder() {
            super(TargetChange.DEFAULT_INSTANCE);
        }
    }

    /* renamed from: com.google.firestore.v1.TargetChange$1 */
    /* loaded from: classes4.dex */
    static /* synthetic */ class C10751 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f301xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f301xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f301xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f301xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f301xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f301xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f301xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f301xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C10751.f301xa1df5c61[methodToInvoke.ordinal()]) {
            case 1:
                return new TargetChange();
            case 2:
                return new Builder(null);
            case 3:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0000\u0001\u0006\u0005\u0000\u0001\u0000\u0001\f\u0002'\u0003\t\u0004\n\u0006\t", new Object[]{"targetChangeType_", "targetIds_", "cause_", "resumeToken_", "readTime_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                Parser<TargetChange> parser = PARSER;
                if (parser == null) {
                    synchronized (TargetChange.class) {
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
        TargetChange targetChange = new TargetChange();
        DEFAULT_INSTANCE = targetChange;
        GeneratedMessageLite.registerDefaultInstance(TargetChange.class, targetChange);
    }

    public static TargetChange getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }
}
