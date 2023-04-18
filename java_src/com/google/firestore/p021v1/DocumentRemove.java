package com.google.firestore.p021v1;

import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Internal;
import com.google.protobuf.MessageLiteOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.Timestamp;
import java.util.List;
/* renamed from: com.google.firestore.v1.DocumentRemove */
/* loaded from: classes3.dex */
public final class DocumentRemove extends GeneratedMessageLite<DocumentRemove, Builder> implements MessageLiteOrBuilder {
    private static final DocumentRemove DEFAULT_INSTANCE;
    public static final int DOCUMENT_FIELD_NUMBER = 1;
    private static volatile Parser<DocumentRemove> PARSER = null;
    public static final int READ_TIME_FIELD_NUMBER = 4;
    public static final int REMOVED_TARGET_IDS_FIELD_NUMBER = 2;
    private Timestamp readTime_;
    private int removedTargetIdsMemoizedSerializedSize = -1;
    private String document_ = "";
    private Internal.IntList removedTargetIds_ = GeneratedMessageLite.emptyIntList();

    private DocumentRemove() {
    }

    public String getDocument() {
        return this.document_;
    }

    public List<Integer> getRemovedTargetIdsList() {
        return this.removedTargetIds_;
    }

    /* renamed from: com.google.firestore.v1.DocumentRemove$Builder */
    /* loaded from: classes3.dex */
    public static final class Builder extends GeneratedMessageLite.Builder<DocumentRemove, Builder> implements MessageLiteOrBuilder {
        /* synthetic */ Builder(C10511 c10511) {
            this();
        }

        private Builder() {
            super(DocumentRemove.DEFAULT_INSTANCE);
        }
    }

    /* renamed from: com.google.firestore.v1.DocumentRemove$1 */
    /* loaded from: classes3.dex */
    static /* synthetic */ class C10511 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f204xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f204xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f204xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f204xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f204xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f204xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f204xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f204xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C10511.f204xa1df5c61[methodToInvoke.ordinal()]) {
            case 1:
                return new DocumentRemove();
            case 2:
                return new Builder(null);
            case 3:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0004\u0003\u0000\u0001\u0000\u0001Ȉ\u0002'\u0004\t", new Object[]{"document_", "removedTargetIds_", "readTime_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                Parser<DocumentRemove> parser = PARSER;
                if (parser == null) {
                    synchronized (DocumentRemove.class) {
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
        DocumentRemove documentRemove = new DocumentRemove();
        DEFAULT_INSTANCE = documentRemove;
        GeneratedMessageLite.registerDefaultInstance(DocumentRemove.class, documentRemove);
    }

    public static DocumentRemove getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }
}
