package com.google.firestore.p021v1;

import com.google.firestore.p021v1.ArrayValue;
import com.google.firestore.p021v1.MapValue;
import com.google.protobuf.ByteString;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.MessageLiteOrBuilder;
import com.google.protobuf.NullValue;
import com.google.protobuf.Parser;
import com.google.protobuf.Timestamp;
import com.google.type.LatLng;
/* renamed from: com.google.firestore.v1.Value */
/* loaded from: classes3.dex */
public final class Value extends GeneratedMessageLite<Value, Builder> implements MessageLiteOrBuilder {
    public static final int ARRAY_VALUE_FIELD_NUMBER = 9;
    public static final int BOOLEAN_VALUE_FIELD_NUMBER = 1;
    public static final int BYTES_VALUE_FIELD_NUMBER = 18;
    private static final Value DEFAULT_INSTANCE;
    public static final int DOUBLE_VALUE_FIELD_NUMBER = 3;
    public static final int GEO_POINT_VALUE_FIELD_NUMBER = 8;
    public static final int INTEGER_VALUE_FIELD_NUMBER = 2;
    public static final int MAP_VALUE_FIELD_NUMBER = 6;
    public static final int NULL_VALUE_FIELD_NUMBER = 11;
    private static volatile Parser<Value> PARSER = null;
    public static final int REFERENCE_VALUE_FIELD_NUMBER = 5;
    public static final int STRING_VALUE_FIELD_NUMBER = 17;
    public static final int TIMESTAMP_VALUE_FIELD_NUMBER = 10;
    private int valueTypeCase_ = 0;
    private Object valueType_;

    private Value() {
    }

    /* renamed from: com.google.firestore.v1.Value$ValueTypeCase */
    /* loaded from: classes3.dex */
    public enum ValueTypeCase {
        NULL_VALUE(11),
        BOOLEAN_VALUE(1),
        INTEGER_VALUE(2),
        DOUBLE_VALUE(3),
        TIMESTAMP_VALUE(10),
        STRING_VALUE(17),
        BYTES_VALUE(18),
        REFERENCE_VALUE(5),
        GEO_POINT_VALUE(8),
        ARRAY_VALUE(9),
        MAP_VALUE(6),
        VALUETYPE_NOT_SET(0);
        
        private final int value;

        ValueTypeCase(int i) {
            this.value = i;
        }

        @Deprecated
        public static ValueTypeCase valueOf(int i) {
            return forNumber(i);
        }

        public static ValueTypeCase forNumber(int i) {
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            if (i != 5) {
                                if (i != 6) {
                                    if (i != 17) {
                                        if (i == 18) {
                                            return BYTES_VALUE;
                                        }
                                        switch (i) {
                                            case 8:
                                                return GEO_POINT_VALUE;
                                            case 9:
                                                return ARRAY_VALUE;
                                            case 10:
                                                return TIMESTAMP_VALUE;
                                            case 11:
                                                return NULL_VALUE;
                                            default:
                                                return null;
                                        }
                                    }
                                    return STRING_VALUE;
                                }
                                return MAP_VALUE;
                            }
                            return REFERENCE_VALUE;
                        }
                        return DOUBLE_VALUE;
                    }
                    return INTEGER_VALUE;
                }
                return BOOLEAN_VALUE;
            }
            return VALUETYPE_NOT_SET;
        }

        public int getNumber() {
            return this.value;
        }
    }

    public ValueTypeCase getValueTypeCase() {
        return ValueTypeCase.forNumber(this.valueTypeCase_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNullValue(NullValue nullValue) {
        this.valueType_ = Integer.valueOf(nullValue.getNumber());
        this.valueTypeCase_ = 11;
    }

    public boolean getBooleanValue() {
        if (this.valueTypeCase_ == 1) {
            return ((Boolean) this.valueType_).booleanValue();
        }
        return false;
    }

    public long getIntegerValue() {
        if (this.valueTypeCase_ == 2) {
            return ((Long) this.valueType_).longValue();
        }
        return 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setIntegerValue(long j) {
        this.valueTypeCase_ = 2;
        this.valueType_ = Long.valueOf(j);
    }

    public double getDoubleValue() {
        if (this.valueTypeCase_ == 3) {
            return ((Double) this.valueType_).doubleValue();
        }
        return 0.0d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDoubleValue(double d) {
        this.valueTypeCase_ = 3;
        this.valueType_ = Double.valueOf(d);
    }

    public Timestamp getTimestampValue() {
        if (this.valueTypeCase_ == 10) {
            return (Timestamp) this.valueType_;
        }
        return Timestamp.getDefaultInstance();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTimestampValue(Timestamp timestamp) {
        timestamp.getClass();
        this.valueType_ = timestamp;
        this.valueTypeCase_ = 10;
    }

    public String getStringValue() {
        return this.valueTypeCase_ == 17 ? (String) this.valueType_ : "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setStringValue(String str) {
        str.getClass();
        this.valueTypeCase_ = 17;
        this.valueType_ = str;
    }

    public ByteString getBytesValue() {
        if (this.valueTypeCase_ == 18) {
            return (ByteString) this.valueType_;
        }
        return ByteString.EMPTY;
    }

    public String getReferenceValue() {
        return this.valueTypeCase_ == 5 ? (String) this.valueType_ : "";
    }

    public LatLng getGeoPointValue() {
        if (this.valueTypeCase_ == 8) {
            return (LatLng) this.valueType_;
        }
        return LatLng.getDefaultInstance();
    }

    public ArrayValue getArrayValue() {
        if (this.valueTypeCase_ == 9) {
            return (ArrayValue) this.valueType_;
        }
        return ArrayValue.getDefaultInstance();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setArrayValue(ArrayValue arrayValue) {
        arrayValue.getClass();
        this.valueType_ = arrayValue;
        this.valueTypeCase_ = 9;
    }

    public MapValue getMapValue() {
        if (this.valueTypeCase_ == 6) {
            return (MapValue) this.valueType_;
        }
        return MapValue.getDefaultInstance();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMapValue(MapValue mapValue) {
        mapValue.getClass();
        this.valueType_ = mapValue;
        this.valueTypeCase_ = 6;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    /* renamed from: com.google.firestore.v1.Value$Builder */
    /* loaded from: classes3.dex */
    public static final class Builder extends GeneratedMessageLite.Builder<Value, Builder> implements MessageLiteOrBuilder {
        /* synthetic */ Builder(C10781 c10781) {
            this();
        }

        private Builder() {
            super(Value.DEFAULT_INSTANCE);
        }

        public Builder setNullValue(NullValue nullValue) {
            copyOnWrite();
            ((Value) this.instance).setNullValue(nullValue);
            return this;
        }

        public Builder setIntegerValue(long j) {
            copyOnWrite();
            ((Value) this.instance).setIntegerValue(j);
            return this;
        }

        public Builder setDoubleValue(double d) {
            copyOnWrite();
            ((Value) this.instance).setDoubleValue(d);
            return this;
        }

        public Builder setTimestampValue(Timestamp.Builder builder) {
            copyOnWrite();
            ((Value) this.instance).setTimestampValue(builder.build());
            return this;
        }

        public Builder setStringValue(String str) {
            copyOnWrite();
            ((Value) this.instance).setStringValue(str);
            return this;
        }

        public Builder setArrayValue(ArrayValue.Builder builder) {
            copyOnWrite();
            ((Value) this.instance).setArrayValue(builder.build());
            return this;
        }

        public Builder setMapValue(MapValue mapValue) {
            copyOnWrite();
            ((Value) this.instance).setMapValue(mapValue);
            return this;
        }

        public Builder setMapValue(MapValue.Builder builder) {
            copyOnWrite();
            ((Value) this.instance).setMapValue(builder.build());
            return this;
        }
    }

    /* renamed from: com.google.firestore.v1.Value$1 */
    /* loaded from: classes3.dex */
    static /* synthetic */ class C10781 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f302xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f302xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f302xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f302xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f302xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f302xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f302xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f302xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C10781.f302xa1df5c61[methodToInvoke.ordinal()]) {
            case 1:
                return new Value();
            case 2:
                return new Builder(null);
            case 3:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u000b\u0001\u0000\u0001\u0012\u000b\u0000\u0000\u0000\u0001:\u0000\u00025\u0000\u00033\u0000\u0005Ȼ\u0000\u0006<\u0000\b<\u0000\t<\u0000\n<\u0000\u000b?\u0000\u0011Ȼ\u0000\u0012=\u0000", new Object[]{"valueType_", "valueTypeCase_", MapValue.class, LatLng.class, ArrayValue.class, Timestamp.class});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                Parser<Value> parser = PARSER;
                if (parser == null) {
                    synchronized (Value.class) {
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
        Value value = new Value();
        DEFAULT_INSTANCE = value;
        GeneratedMessageLite.registerDefaultInstance(Value.class, value);
    }

    public static Value getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }
}
