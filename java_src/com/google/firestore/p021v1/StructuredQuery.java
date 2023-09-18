package com.google.firestore.p021v1;

import com.google.firestore.p021v1.Cursor;
import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Int32Value;
import com.google.protobuf.Internal;
import com.google.protobuf.MessageLiteOrBuilder;
import com.google.protobuf.Parser;
import java.util.List;
/* renamed from: com.google.firestore.v1.StructuredQuery */
/* loaded from: classes4.dex */
public final class StructuredQuery extends GeneratedMessageLite<StructuredQuery, Builder> implements MessageLiteOrBuilder {
    private static final StructuredQuery DEFAULT_INSTANCE;
    public static final int END_AT_FIELD_NUMBER = 8;
    public static final int FROM_FIELD_NUMBER = 2;
    public static final int LIMIT_FIELD_NUMBER = 5;
    public static final int OFFSET_FIELD_NUMBER = 6;
    public static final int ORDER_BY_FIELD_NUMBER = 4;
    private static volatile Parser<StructuredQuery> PARSER = null;
    public static final int SELECT_FIELD_NUMBER = 1;
    public static final int START_AT_FIELD_NUMBER = 7;
    public static final int WHERE_FIELD_NUMBER = 3;
    private Cursor endAt_;
    private Int32Value limit_;
    private int offset_;
    private Projection select_;
    private Cursor startAt_;
    private Filter where_;
    private Internal.ProtobufList<CollectionSelector> from_ = GeneratedMessageLite.emptyProtobufList();
    private Internal.ProtobufList<Order> orderBy_ = GeneratedMessageLite.emptyProtobufList();

    private StructuredQuery() {
    }

    /* renamed from: com.google.firestore.v1.StructuredQuery$Direction */
    /* loaded from: classes4.dex */
    public enum Direction implements Internal.EnumLite {
        DIRECTION_UNSPECIFIED(0),
        ASCENDING(1),
        DESCENDING(2),
        UNRECOGNIZED(-1);
        
        public static final int ASCENDING_VALUE = 1;
        public static final int DESCENDING_VALUE = 2;
        public static final int DIRECTION_UNSPECIFIED_VALUE = 0;
        private static final Internal.EnumLiteMap<Direction> internalValueMap = new Internal.EnumLiteMap<Direction>() { // from class: com.google.firestore.v1.StructuredQuery.Direction.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public Direction findValueByNumber(int i) {
                return Direction.forNumber(i);
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
        public static Direction valueOf(int i) {
            return forNumber(i);
        }

        public static Direction forNumber(int i) {
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        return null;
                    }
                    return DESCENDING;
                }
                return ASCENDING;
            }
            return DIRECTION_UNSPECIFIED;
        }

        public static Internal.EnumLiteMap<Direction> internalGetValueMap() {
            return internalValueMap;
        }

        public static Internal.EnumVerifier internalGetVerifier() {
            return DirectionVerifier.INSTANCE;
        }

        /* renamed from: com.google.firestore.v1.StructuredQuery$Direction$DirectionVerifier */
        /* loaded from: classes4.dex */
        private static final class DirectionVerifier implements Internal.EnumVerifier {
            static final Internal.EnumVerifier INSTANCE = new DirectionVerifier();

            private DirectionVerifier() {
            }

            @Override // com.google.protobuf.Internal.EnumVerifier
            public boolean isInRange(int i) {
                return Direction.forNumber(i) != null;
            }
        }

        Direction(int i) {
            this.value = i;
        }
    }

    /* renamed from: com.google.firestore.v1.StructuredQuery$CollectionSelector */
    /* loaded from: classes4.dex */
    public static final class CollectionSelector extends GeneratedMessageLite<CollectionSelector, Builder> implements MessageLiteOrBuilder {
        public static final int ALL_DESCENDANTS_FIELD_NUMBER = 3;
        public static final int COLLECTION_ID_FIELD_NUMBER = 2;
        private static final CollectionSelector DEFAULT_INSTANCE;
        private static volatile Parser<CollectionSelector> PARSER;
        private boolean allDescendants_;
        private String collectionId_ = "";

        private CollectionSelector() {
        }

        public String getCollectionId() {
            return this.collectionId_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCollectionId(String str) {
            str.getClass();
            this.collectionId_ = str;
        }

        public boolean getAllDescendants() {
            return this.allDescendants_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAllDescendants(boolean z) {
            this.allDescendants_ = z;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        /* renamed from: com.google.firestore.v1.StructuredQuery$CollectionSelector$Builder */
        /* loaded from: classes4.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<CollectionSelector, Builder> implements MessageLiteOrBuilder {
            /* synthetic */ Builder(C10691 c10691) {
                this();
            }

            private Builder() {
                super(CollectionSelector.DEFAULT_INSTANCE);
            }

            public Builder setCollectionId(String str) {
                copyOnWrite();
                ((CollectionSelector) this.instance).setCollectionId(str);
                return this;
            }

            public Builder setAllDescendants(boolean z) {
                copyOnWrite();
                ((CollectionSelector) this.instance).setAllDescendants(z);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
            switch (C10691.f298xa1df5c61[methodToInvoke.ordinal()]) {
                case 1:
                    return new CollectionSelector();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0002\u0003\u0002\u0000\u0000\u0000\u0002Ȉ\u0003\u0007", new Object[]{"collectionId_", "allDescendants_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<CollectionSelector> parser = PARSER;
                    if (parser == null) {
                        synchronized (CollectionSelector.class) {
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
            CollectionSelector collectionSelector = new CollectionSelector();
            DEFAULT_INSTANCE = collectionSelector;
            GeneratedMessageLite.registerDefaultInstance(CollectionSelector.class, collectionSelector);
        }
    }

    /* renamed from: com.google.firestore.v1.StructuredQuery$1 */
    /* loaded from: classes4.dex */
    static /* synthetic */ class C10691 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f298xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f298xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f298xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f298xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f298xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f298xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f298xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f298xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* renamed from: com.google.firestore.v1.StructuredQuery$Filter */
    /* loaded from: classes4.dex */
    public static final class Filter extends GeneratedMessageLite<Filter, Builder> implements MessageLiteOrBuilder {
        public static final int COMPOSITE_FILTER_FIELD_NUMBER = 1;
        private static final Filter DEFAULT_INSTANCE;
        public static final int FIELD_FILTER_FIELD_NUMBER = 2;
        private static volatile Parser<Filter> PARSER = null;
        public static final int UNARY_FILTER_FIELD_NUMBER = 3;
        private int filterTypeCase_ = 0;
        private Object filterType_;

        private Filter() {
        }

        /* renamed from: com.google.firestore.v1.StructuredQuery$Filter$FilterTypeCase */
        /* loaded from: classes4.dex */
        public enum FilterTypeCase {
            COMPOSITE_FILTER(1),
            FIELD_FILTER(2),
            UNARY_FILTER(3),
            FILTERTYPE_NOT_SET(0);
            
            private final int value;

            FilterTypeCase(int i) {
                this.value = i;
            }

            @Deprecated
            public static FilterTypeCase valueOf(int i) {
                return forNumber(i);
            }

            public static FilterTypeCase forNumber(int i) {
                if (i != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i != 3) {
                                return null;
                            }
                            return UNARY_FILTER;
                        }
                        return FIELD_FILTER;
                    }
                    return COMPOSITE_FILTER;
                }
                return FILTERTYPE_NOT_SET;
            }

            public int getNumber() {
                return this.value;
            }
        }

        public FilterTypeCase getFilterTypeCase() {
            return FilterTypeCase.forNumber(this.filterTypeCase_);
        }

        public CompositeFilter getCompositeFilter() {
            if (this.filterTypeCase_ == 1) {
                return (CompositeFilter) this.filterType_;
            }
            return CompositeFilter.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCompositeFilter(CompositeFilter compositeFilter) {
            compositeFilter.getClass();
            this.filterType_ = compositeFilter;
            this.filterTypeCase_ = 1;
        }

        public FieldFilter getFieldFilter() {
            if (this.filterTypeCase_ == 2) {
                return (FieldFilter) this.filterType_;
            }
            return FieldFilter.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFieldFilter(FieldFilter fieldFilter) {
            fieldFilter.getClass();
            this.filterType_ = fieldFilter;
            this.filterTypeCase_ = 2;
        }

        public UnaryFilter getUnaryFilter() {
            if (this.filterTypeCase_ == 3) {
                return (UnaryFilter) this.filterType_;
            }
            return UnaryFilter.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setUnaryFilter(UnaryFilter unaryFilter) {
            unaryFilter.getClass();
            this.filterType_ = unaryFilter;
            this.filterTypeCase_ = 3;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        /* renamed from: com.google.firestore.v1.StructuredQuery$Filter$Builder */
        /* loaded from: classes4.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<Filter, Builder> implements MessageLiteOrBuilder {
            /* synthetic */ Builder(C10691 c10691) {
                this();
            }

            private Builder() {
                super(Filter.DEFAULT_INSTANCE);
            }

            public Builder setCompositeFilter(CompositeFilter.Builder builder) {
                copyOnWrite();
                ((Filter) this.instance).setCompositeFilter(builder.build());
                return this;
            }

            public Builder setFieldFilter(FieldFilter.Builder builder) {
                copyOnWrite();
                ((Filter) this.instance).setFieldFilter(builder.build());
                return this;
            }

            public Builder setUnaryFilter(UnaryFilter.Builder builder) {
                copyOnWrite();
                ((Filter) this.instance).setUnaryFilter(builder.build());
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
            switch (C10691.f298xa1df5c61[methodToInvoke.ordinal()]) {
                case 1:
                    return new Filter();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0001\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000", new Object[]{"filterType_", "filterTypeCase_", CompositeFilter.class, FieldFilter.class, UnaryFilter.class});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<Filter> parser = PARSER;
                    if (parser == null) {
                        synchronized (Filter.class) {
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
            Filter filter = new Filter();
            DEFAULT_INSTANCE = filter;
            GeneratedMessageLite.registerDefaultInstance(Filter.class, filter);
        }

        public static Filter getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }
    }

    /* renamed from: com.google.firestore.v1.StructuredQuery$CompositeFilter */
    /* loaded from: classes4.dex */
    public static final class CompositeFilter extends GeneratedMessageLite<CompositeFilter, Builder> implements MessageLiteOrBuilder {
        private static final CompositeFilter DEFAULT_INSTANCE;
        public static final int FILTERS_FIELD_NUMBER = 2;
        public static final int OP_FIELD_NUMBER = 1;
        private static volatile Parser<CompositeFilter> PARSER;
        private Internal.ProtobufList<Filter> filters_ = GeneratedMessageLite.emptyProtobufList();
        private int op_;

        private CompositeFilter() {
        }

        /* renamed from: com.google.firestore.v1.StructuredQuery$CompositeFilter$Operator */
        /* loaded from: classes4.dex */
        public enum Operator implements Internal.EnumLite {
            OPERATOR_UNSPECIFIED(0),
            AND(1),
            UNRECOGNIZED(-1);
            
            public static final int AND_VALUE = 1;
            public static final int OPERATOR_UNSPECIFIED_VALUE = 0;
            private static final Internal.EnumLiteMap<Operator> internalValueMap = new Internal.EnumLiteMap<Operator>() { // from class: com.google.firestore.v1.StructuredQuery.CompositeFilter.Operator.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.google.protobuf.Internal.EnumLiteMap
                public Operator findValueByNumber(int i) {
                    return Operator.forNumber(i);
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
            public static Operator valueOf(int i) {
                return forNumber(i);
            }

            public static Operator forNumber(int i) {
                if (i != 0) {
                    if (i != 1) {
                        return null;
                    }
                    return AND;
                }
                return OPERATOR_UNSPECIFIED;
            }

            public static Internal.EnumLiteMap<Operator> internalGetValueMap() {
                return internalValueMap;
            }

            public static Internal.EnumVerifier internalGetVerifier() {
                return OperatorVerifier.INSTANCE;
            }

            /* renamed from: com.google.firestore.v1.StructuredQuery$CompositeFilter$Operator$OperatorVerifier */
            /* loaded from: classes4.dex */
            private static final class OperatorVerifier implements Internal.EnumVerifier {
                static final Internal.EnumVerifier INSTANCE = new OperatorVerifier();

                private OperatorVerifier() {
                }

                @Override // com.google.protobuf.Internal.EnumVerifier
                public boolean isInRange(int i) {
                    return Operator.forNumber(i) != null;
                }
            }

            Operator(int i) {
                this.value = i;
            }
        }

        public Operator getOp() {
            Operator forNumber = Operator.forNumber(this.op_);
            return forNumber == null ? Operator.UNRECOGNIZED : forNumber;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOp(Operator operator) {
            this.op_ = operator.getNumber();
        }

        public List<Filter> getFiltersList() {
            return this.filters_;
        }

        private void ensureFiltersIsMutable() {
            Internal.ProtobufList<Filter> protobufList = this.filters_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.filters_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllFilters(Iterable<? extends Filter> iterable) {
            ensureFiltersIsMutable();
            AbstractMessageLite.addAll((Iterable) iterable, (List) this.filters_);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        /* renamed from: com.google.firestore.v1.StructuredQuery$CompositeFilter$Builder */
        /* loaded from: classes4.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<CompositeFilter, Builder> implements MessageLiteOrBuilder {
            /* synthetic */ Builder(C10691 c10691) {
                this();
            }

            private Builder() {
                super(CompositeFilter.DEFAULT_INSTANCE);
            }

            public Builder setOp(Operator operator) {
                copyOnWrite();
                ((CompositeFilter) this.instance).setOp(operator);
                return this;
            }

            public Builder addAllFilters(Iterable<? extends Filter> iterable) {
                copyOnWrite();
                ((CompositeFilter) this.instance).addAllFilters(iterable);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
            switch (C10691.f298xa1df5c61[methodToInvoke.ordinal()]) {
                case 1:
                    return new CompositeFilter();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\f\u0002\u001b", new Object[]{"op_", "filters_", Filter.class});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<CompositeFilter> parser = PARSER;
                    if (parser == null) {
                        synchronized (CompositeFilter.class) {
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
            CompositeFilter compositeFilter = new CompositeFilter();
            DEFAULT_INSTANCE = compositeFilter;
            GeneratedMessageLite.registerDefaultInstance(CompositeFilter.class, compositeFilter);
        }

        public static CompositeFilter getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }
    }

    /* renamed from: com.google.firestore.v1.StructuredQuery$FieldFilter */
    /* loaded from: classes4.dex */
    public static final class FieldFilter extends GeneratedMessageLite<FieldFilter, Builder> implements MessageLiteOrBuilder {
        private static final FieldFilter DEFAULT_INSTANCE;
        public static final int FIELD_FIELD_NUMBER = 1;
        public static final int OP_FIELD_NUMBER = 2;
        private static volatile Parser<FieldFilter> PARSER = null;
        public static final int VALUE_FIELD_NUMBER = 3;
        private FieldReference field_;
        private int op_;
        private Value value_;

        private FieldFilter() {
        }

        /* renamed from: com.google.firestore.v1.StructuredQuery$FieldFilter$Operator */
        /* loaded from: classes4.dex */
        public enum Operator implements Internal.EnumLite {
            OPERATOR_UNSPECIFIED(0),
            LESS_THAN(1),
            LESS_THAN_OR_EQUAL(2),
            GREATER_THAN(3),
            GREATER_THAN_OR_EQUAL(4),
            EQUAL(5),
            NOT_EQUAL(6),
            ARRAY_CONTAINS(7),
            IN(8),
            ARRAY_CONTAINS_ANY(9),
            NOT_IN(10),
            UNRECOGNIZED(-1);
            
            public static final int ARRAY_CONTAINS_ANY_VALUE = 9;
            public static final int ARRAY_CONTAINS_VALUE = 7;
            public static final int EQUAL_VALUE = 5;
            public static final int GREATER_THAN_OR_EQUAL_VALUE = 4;
            public static final int GREATER_THAN_VALUE = 3;
            public static final int IN_VALUE = 8;
            public static final int LESS_THAN_OR_EQUAL_VALUE = 2;
            public static final int LESS_THAN_VALUE = 1;
            public static final int NOT_EQUAL_VALUE = 6;
            public static final int NOT_IN_VALUE = 10;
            public static final int OPERATOR_UNSPECIFIED_VALUE = 0;
            private static final Internal.EnumLiteMap<Operator> internalValueMap = new Internal.EnumLiteMap<Operator>() { // from class: com.google.firestore.v1.StructuredQuery.FieldFilter.Operator.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.google.protobuf.Internal.EnumLiteMap
                public Operator findValueByNumber(int i) {
                    return Operator.forNumber(i);
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
            public static Operator valueOf(int i) {
                return forNumber(i);
            }

            public static Operator forNumber(int i) {
                switch (i) {
                    case 0:
                        return OPERATOR_UNSPECIFIED;
                    case 1:
                        return LESS_THAN;
                    case 2:
                        return LESS_THAN_OR_EQUAL;
                    case 3:
                        return GREATER_THAN;
                    case 4:
                        return GREATER_THAN_OR_EQUAL;
                    case 5:
                        return EQUAL;
                    case 6:
                        return NOT_EQUAL;
                    case 7:
                        return ARRAY_CONTAINS;
                    case 8:
                        return IN;
                    case 9:
                        return ARRAY_CONTAINS_ANY;
                    case 10:
                        return NOT_IN;
                    default:
                        return null;
                }
            }

            public static Internal.EnumLiteMap<Operator> internalGetValueMap() {
                return internalValueMap;
            }

            public static Internal.EnumVerifier internalGetVerifier() {
                return OperatorVerifier.INSTANCE;
            }

            /* renamed from: com.google.firestore.v1.StructuredQuery$FieldFilter$Operator$OperatorVerifier */
            /* loaded from: classes4.dex */
            private static final class OperatorVerifier implements Internal.EnumVerifier {
                static final Internal.EnumVerifier INSTANCE = new OperatorVerifier();

                private OperatorVerifier() {
                }

                @Override // com.google.protobuf.Internal.EnumVerifier
                public boolean isInRange(int i) {
                    return Operator.forNumber(i) != null;
                }
            }

            Operator(int i) {
                this.value = i;
            }
        }

        public FieldReference getField() {
            FieldReference fieldReference = this.field_;
            return fieldReference == null ? FieldReference.getDefaultInstance() : fieldReference;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setField(FieldReference fieldReference) {
            fieldReference.getClass();
            this.field_ = fieldReference;
        }

        public Operator getOp() {
            Operator forNumber = Operator.forNumber(this.op_);
            return forNumber == null ? Operator.UNRECOGNIZED : forNumber;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOp(Operator operator) {
            this.op_ = operator.getNumber();
        }

        public Value getValue() {
            Value value = this.value_;
            return value == null ? Value.getDefaultInstance() : value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setValue(Value value) {
            value.getClass();
            this.value_ = value;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        /* renamed from: com.google.firestore.v1.StructuredQuery$FieldFilter$Builder */
        /* loaded from: classes4.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<FieldFilter, Builder> implements MessageLiteOrBuilder {
            /* synthetic */ Builder(C10691 c10691) {
                this();
            }

            private Builder() {
                super(FieldFilter.DEFAULT_INSTANCE);
            }

            public Builder setField(FieldReference fieldReference) {
                copyOnWrite();
                ((FieldFilter) this.instance).setField(fieldReference);
                return this;
            }

            public Builder setOp(Operator operator) {
                copyOnWrite();
                ((FieldFilter) this.instance).setOp(operator);
                return this;
            }

            public Builder setValue(Value value) {
                copyOnWrite();
                ((FieldFilter) this.instance).setValue(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
            switch (C10691.f298xa1df5c61[methodToInvoke.ordinal()]) {
                case 1:
                    return new FieldFilter();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\f\u0003\t", new Object[]{"field_", "op_", "value_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<FieldFilter> parser = PARSER;
                    if (parser == null) {
                        synchronized (FieldFilter.class) {
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
            FieldFilter fieldFilter = new FieldFilter();
            DEFAULT_INSTANCE = fieldFilter;
            GeneratedMessageLite.registerDefaultInstance(FieldFilter.class, fieldFilter);
        }

        public static FieldFilter getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }
    }

    /* renamed from: com.google.firestore.v1.StructuredQuery$UnaryFilter */
    /* loaded from: classes4.dex */
    public static final class UnaryFilter extends GeneratedMessageLite<UnaryFilter, Builder> implements MessageLiteOrBuilder {
        private static final UnaryFilter DEFAULT_INSTANCE;
        public static final int FIELD_FIELD_NUMBER = 2;
        public static final int OP_FIELD_NUMBER = 1;
        private static volatile Parser<UnaryFilter> PARSER;
        private int op_;
        private int operandTypeCase_ = 0;
        private Object operandType_;

        private UnaryFilter() {
        }

        /* renamed from: com.google.firestore.v1.StructuredQuery$UnaryFilter$Operator */
        /* loaded from: classes4.dex */
        public enum Operator implements Internal.EnumLite {
            OPERATOR_UNSPECIFIED(0),
            IS_NAN(2),
            IS_NULL(3),
            IS_NOT_NAN(4),
            IS_NOT_NULL(5),
            UNRECOGNIZED(-1);
            
            public static final int IS_NAN_VALUE = 2;
            public static final int IS_NOT_NAN_VALUE = 4;
            public static final int IS_NOT_NULL_VALUE = 5;
            public static final int IS_NULL_VALUE = 3;
            public static final int OPERATOR_UNSPECIFIED_VALUE = 0;
            private static final Internal.EnumLiteMap<Operator> internalValueMap = new Internal.EnumLiteMap<Operator>() { // from class: com.google.firestore.v1.StructuredQuery.UnaryFilter.Operator.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.google.protobuf.Internal.EnumLiteMap
                public Operator findValueByNumber(int i) {
                    return Operator.forNumber(i);
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
            public static Operator valueOf(int i) {
                return forNumber(i);
            }

            public static Operator forNumber(int i) {
                if (i != 0) {
                    if (i != 2) {
                        if (i != 3) {
                            if (i != 4) {
                                if (i != 5) {
                                    return null;
                                }
                                return IS_NOT_NULL;
                            }
                            return IS_NOT_NAN;
                        }
                        return IS_NULL;
                    }
                    return IS_NAN;
                }
                return OPERATOR_UNSPECIFIED;
            }

            public static Internal.EnumLiteMap<Operator> internalGetValueMap() {
                return internalValueMap;
            }

            public static Internal.EnumVerifier internalGetVerifier() {
                return OperatorVerifier.INSTANCE;
            }

            /* renamed from: com.google.firestore.v1.StructuredQuery$UnaryFilter$Operator$OperatorVerifier */
            /* loaded from: classes4.dex */
            private static final class OperatorVerifier implements Internal.EnumVerifier {
                static final Internal.EnumVerifier INSTANCE = new OperatorVerifier();

                private OperatorVerifier() {
                }

                @Override // com.google.protobuf.Internal.EnumVerifier
                public boolean isInRange(int i) {
                    return Operator.forNumber(i) != null;
                }
            }

            Operator(int i) {
                this.value = i;
            }
        }

        public Operator getOp() {
            Operator forNumber = Operator.forNumber(this.op_);
            return forNumber == null ? Operator.UNRECOGNIZED : forNumber;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOp(Operator operator) {
            this.op_ = operator.getNumber();
        }

        public FieldReference getField() {
            if (this.operandTypeCase_ == 2) {
                return (FieldReference) this.operandType_;
            }
            return FieldReference.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setField(FieldReference fieldReference) {
            fieldReference.getClass();
            this.operandType_ = fieldReference;
            this.operandTypeCase_ = 2;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        /* renamed from: com.google.firestore.v1.StructuredQuery$UnaryFilter$Builder */
        /* loaded from: classes4.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<UnaryFilter, Builder> implements MessageLiteOrBuilder {
            /* synthetic */ Builder(C10691 c10691) {
                this();
            }

            private Builder() {
                super(UnaryFilter.DEFAULT_INSTANCE);
            }

            public Builder setOp(Operator operator) {
                copyOnWrite();
                ((UnaryFilter) this.instance).setOp(operator);
                return this;
            }

            public Builder setField(FieldReference fieldReference) {
                copyOnWrite();
                ((UnaryFilter) this.instance).setField(fieldReference);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
            switch (C10691.f298xa1df5c61[methodToInvoke.ordinal()]) {
                case 1:
                    return new UnaryFilter();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\f\u0002<\u0000", new Object[]{"operandType_", "operandTypeCase_", "op_", FieldReference.class});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<UnaryFilter> parser = PARSER;
                    if (parser == null) {
                        synchronized (UnaryFilter.class) {
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
            UnaryFilter unaryFilter = new UnaryFilter();
            DEFAULT_INSTANCE = unaryFilter;
            GeneratedMessageLite.registerDefaultInstance(UnaryFilter.class, unaryFilter);
        }

        public static UnaryFilter getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }
    }

    /* renamed from: com.google.firestore.v1.StructuredQuery$Order */
    /* loaded from: classes4.dex */
    public static final class Order extends GeneratedMessageLite<Order, Builder> implements MessageLiteOrBuilder {
        private static final Order DEFAULT_INSTANCE;
        public static final int DIRECTION_FIELD_NUMBER = 2;
        public static final int FIELD_FIELD_NUMBER = 1;
        private static volatile Parser<Order> PARSER;
        private int direction_;
        private FieldReference field_;

        private Order() {
        }

        public FieldReference getField() {
            FieldReference fieldReference = this.field_;
            return fieldReference == null ? FieldReference.getDefaultInstance() : fieldReference;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setField(FieldReference fieldReference) {
            fieldReference.getClass();
            this.field_ = fieldReference;
        }

        public Direction getDirection() {
            Direction forNumber = Direction.forNumber(this.direction_);
            return forNumber == null ? Direction.UNRECOGNIZED : forNumber;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDirection(Direction direction) {
            this.direction_ = direction.getNumber();
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        /* renamed from: com.google.firestore.v1.StructuredQuery$Order$Builder */
        /* loaded from: classes4.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<Order, Builder> implements MessageLiteOrBuilder {
            /* synthetic */ Builder(C10691 c10691) {
                this();
            }

            private Builder() {
                super(Order.DEFAULT_INSTANCE);
            }

            public Builder setField(FieldReference fieldReference) {
                copyOnWrite();
                ((Order) this.instance).setField(fieldReference);
                return this;
            }

            public Builder setDirection(Direction direction) {
                copyOnWrite();
                ((Order) this.instance).setDirection(direction);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
            switch (C10691.f298xa1df5c61[methodToInvoke.ordinal()]) {
                case 1:
                    return new Order();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\f", new Object[]{"field_", "direction_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<Order> parser = PARSER;
                    if (parser == null) {
                        synchronized (Order.class) {
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
            Order order = new Order();
            DEFAULT_INSTANCE = order;
            GeneratedMessageLite.registerDefaultInstance(Order.class, order);
        }
    }

    /* renamed from: com.google.firestore.v1.StructuredQuery$FieldReference */
    /* loaded from: classes4.dex */
    public static final class FieldReference extends GeneratedMessageLite<FieldReference, Builder> implements MessageLiteOrBuilder {
        private static final FieldReference DEFAULT_INSTANCE;
        public static final int FIELD_PATH_FIELD_NUMBER = 2;
        private static volatile Parser<FieldReference> PARSER;
        private String fieldPath_ = "";

        private FieldReference() {
        }

        public String getFieldPath() {
            return this.fieldPath_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFieldPath(String str) {
            str.getClass();
            this.fieldPath_ = str;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        /* renamed from: com.google.firestore.v1.StructuredQuery$FieldReference$Builder */
        /* loaded from: classes4.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<FieldReference, Builder> implements MessageLiteOrBuilder {
            /* synthetic */ Builder(C10691 c10691) {
                this();
            }

            private Builder() {
                super(FieldReference.DEFAULT_INSTANCE);
            }

            public Builder setFieldPath(String str) {
                copyOnWrite();
                ((FieldReference) this.instance).setFieldPath(str);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
            switch (C10691.f298xa1df5c61[methodToInvoke.ordinal()]) {
                case 1:
                    return new FieldReference();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0002\u0002\u0001\u0000\u0000\u0000\u0002Ȉ", new Object[]{"fieldPath_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<FieldReference> parser = PARSER;
                    if (parser == null) {
                        synchronized (FieldReference.class) {
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
            FieldReference fieldReference = new FieldReference();
            DEFAULT_INSTANCE = fieldReference;
            GeneratedMessageLite.registerDefaultInstance(FieldReference.class, fieldReference);
        }

        public static FieldReference getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }
    }

    /* renamed from: com.google.firestore.v1.StructuredQuery$Projection */
    /* loaded from: classes4.dex */
    public static final class Projection extends GeneratedMessageLite<Projection, Builder> implements MessageLiteOrBuilder {
        private static final Projection DEFAULT_INSTANCE;
        public static final int FIELDS_FIELD_NUMBER = 2;
        private static volatile Parser<Projection> PARSER;
        private Internal.ProtobufList<FieldReference> fields_ = GeneratedMessageLite.emptyProtobufList();

        private Projection() {
        }

        /* renamed from: com.google.firestore.v1.StructuredQuery$Projection$Builder */
        /* loaded from: classes4.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<Projection, Builder> implements MessageLiteOrBuilder {
            /* synthetic */ Builder(C10691 c10691) {
                this();
            }

            private Builder() {
                super(Projection.DEFAULT_INSTANCE);
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
            switch (C10691.f298xa1df5c61[methodToInvoke.ordinal()]) {
                case 1:
                    return new Projection();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0002\u0002\u0001\u0000\u0001\u0000\u0002\u001b", new Object[]{"fields_", FieldReference.class});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<Projection> parser = PARSER;
                    if (parser == null) {
                        synchronized (Projection.class) {
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
            Projection projection = new Projection();
            DEFAULT_INSTANCE = projection;
            GeneratedMessageLite.registerDefaultInstance(Projection.class, projection);
        }
    }

    public int getFromCount() {
        return this.from_.size();
    }

    public CollectionSelector getFrom(int i) {
        return this.from_.get(i);
    }

    private void ensureFromIsMutable() {
        Internal.ProtobufList<CollectionSelector> protobufList = this.from_;
        if (protobufList.isModifiable()) {
            return;
        }
        this.from_ = GeneratedMessageLite.mutableCopy(protobufList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addFrom(CollectionSelector collectionSelector) {
        collectionSelector.getClass();
        ensureFromIsMutable();
        this.from_.add(collectionSelector);
    }

    public boolean hasWhere() {
        return this.where_ != null;
    }

    public Filter getWhere() {
        Filter filter = this.where_;
        return filter == null ? Filter.getDefaultInstance() : filter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setWhere(Filter filter) {
        filter.getClass();
        this.where_ = filter;
    }

    public int getOrderByCount() {
        return this.orderBy_.size();
    }

    public Order getOrderBy(int i) {
        return this.orderBy_.get(i);
    }

    private void ensureOrderByIsMutable() {
        Internal.ProtobufList<Order> protobufList = this.orderBy_;
        if (protobufList.isModifiable()) {
            return;
        }
        this.orderBy_ = GeneratedMessageLite.mutableCopy(protobufList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addOrderBy(Order order) {
        order.getClass();
        ensureOrderByIsMutable();
        this.orderBy_.add(order);
    }

    public boolean hasStartAt() {
        return this.startAt_ != null;
    }

    public Cursor getStartAt() {
        Cursor cursor = this.startAt_;
        return cursor == null ? Cursor.getDefaultInstance() : cursor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setStartAt(Cursor cursor) {
        cursor.getClass();
        this.startAt_ = cursor;
    }

    public boolean hasEndAt() {
        return this.endAt_ != null;
    }

    public Cursor getEndAt() {
        Cursor cursor = this.endAt_;
        return cursor == null ? Cursor.getDefaultInstance() : cursor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setEndAt(Cursor cursor) {
        cursor.getClass();
        this.endAt_ = cursor;
    }

    public boolean hasLimit() {
        return this.limit_ != null;
    }

    public Int32Value getLimit() {
        Int32Value int32Value = this.limit_;
        return int32Value == null ? Int32Value.getDefaultInstance() : int32Value;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setLimit(Int32Value int32Value) {
        int32Value.getClass();
        this.limit_ = int32Value;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    /* renamed from: com.google.firestore.v1.StructuredQuery$Builder */
    /* loaded from: classes4.dex */
    public static final class Builder extends GeneratedMessageLite.Builder<StructuredQuery, Builder> implements MessageLiteOrBuilder {
        /* synthetic */ Builder(C10691 c10691) {
            this();
        }

        private Builder() {
            super(StructuredQuery.DEFAULT_INSTANCE);
        }

        public Builder addFrom(CollectionSelector.Builder builder) {
            copyOnWrite();
            ((StructuredQuery) this.instance).addFrom(builder.build());
            return this;
        }

        public Builder setWhere(Filter filter) {
            copyOnWrite();
            ((StructuredQuery) this.instance).setWhere(filter);
            return this;
        }

        public Builder addOrderBy(Order order) {
            copyOnWrite();
            ((StructuredQuery) this.instance).addOrderBy(order);
            return this;
        }

        public Builder setStartAt(Cursor.Builder builder) {
            copyOnWrite();
            ((StructuredQuery) this.instance).setStartAt(builder.build());
            return this;
        }

        public Builder setEndAt(Cursor.Builder builder) {
            copyOnWrite();
            ((StructuredQuery) this.instance).setEndAt(builder.build());
            return this;
        }

        public Builder setLimit(Int32Value.Builder builder) {
            copyOnWrite();
            ((StructuredQuery) this.instance).setLimit(builder.build());
            return this;
        }
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C10691.f298xa1df5c61[methodToInvoke.ordinal()]) {
            case 1:
                return new StructuredQuery();
            case 2:
                return new Builder(null);
            case 3:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\b\u0000\u0000\u0001\b\b\u0000\u0002\u0000\u0001\t\u0002\u001b\u0003\t\u0004\u001b\u0005\t\u0006\u0004\u0007\t\b\t", new Object[]{"select_", "from_", CollectionSelector.class, "where_", "orderBy_", Order.class, "limit_", "offset_", "startAt_", "endAt_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                Parser<StructuredQuery> parser = PARSER;
                if (parser == null) {
                    synchronized (StructuredQuery.class) {
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
        StructuredQuery structuredQuery = new StructuredQuery();
        DEFAULT_INSTANCE = structuredQuery;
        GeneratedMessageLite.registerDefaultInstance(StructuredQuery.class, structuredQuery);
    }

    public static StructuredQuery getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }
}
