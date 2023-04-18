package com.google.firestore.p021v1;

import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Internal;
import com.google.protobuf.MessageLiteOrBuilder;
import com.google.protobuf.Parser;
import java.util.List;
/* renamed from: com.google.firestore.v1.DocumentChange */
/* loaded from: classes3.dex */
public final class DocumentChange extends GeneratedMessageLite<DocumentChange, Builder> implements MessageLiteOrBuilder {
    private static final DocumentChange DEFAULT_INSTANCE;
    public static final int DOCUMENT_FIELD_NUMBER = 1;
    private static volatile Parser<DocumentChange> PARSER = null;
    public static final int REMOVED_TARGET_IDS_FIELD_NUMBER = 6;
    public static final int TARGET_IDS_FIELD_NUMBER = 5;
    private Document document_;
    private int targetIdsMemoizedSerializedSize = -1;
    private int removedTargetIdsMemoizedSerializedSize = -1;
    private Internal.IntList targetIds_ = GeneratedMessageLite.emptyIntList();
    private Internal.IntList removedTargetIds_ = GeneratedMessageLite.emptyIntList();

    private DocumentChange() {
    }

    public Document getDocument() {
        Document document = this.document_;
        return document == null ? Document.getDefaultInstance() : document;
    }

    public List<Integer> getTargetIdsList() {
        return this.targetIds_;
    }

    public List<Integer> getRemovedTargetIdsList() {
        return this.removedTargetIds_;
    }

    /* renamed from: com.google.firestore.v1.DocumentChange$Builder */
    /* loaded from: classes3.dex */
    public static final class Builder extends GeneratedMessageLite.Builder<DocumentChange, Builder> implements MessageLiteOrBuilder {
        /* synthetic */ Builder(C10481 c10481) {
            this();
        }

        private Builder() {
            super(DocumentChange.DEFAULT_INSTANCE);
        }
    }

    /* renamed from: com.google.firestore.v1.DocumentChange$1 */
    /* loaded from: classes3.dex */
    static /* synthetic */ class C10481 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f201xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f201xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f201xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f201xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f201xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f201xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f201xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f201xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C10481.f201xa1df5c61[methodToInvoke.ordinal()]) {
            case 1:
                return new DocumentChange();
            case 2:
                return new Builder(null);
            case 3:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0006\u0003\u0000\u0002\u0000\u0001\t\u0005'\u0006'", new Object[]{"document_", "targetIds_", "removedTargetIds_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                Parser<DocumentChange> parser = PARSER;
                if (parser == null) {
                    synchronized (DocumentChange.class) {
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
        DocumentChange documentChange = new DocumentChange();
        DEFAULT_INSTANCE = documentChange;
        GeneratedMessageLite.registerDefaultInstance(DocumentChange.class, documentChange);
    }

    public static DocumentChange getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }
}
