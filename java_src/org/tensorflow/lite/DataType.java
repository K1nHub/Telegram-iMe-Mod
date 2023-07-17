package org.tensorflow.lite;
/* loaded from: classes6.dex */
public enum DataType {
    FLOAT32(1),
    INT32(2),
    UINT8(3),
    INT64(4),
    STRING(5);
    
    private static final DataType[] values = values();
    private final int value;

    DataType(int value) {
        this.value = value;
    }

    /* renamed from: org.tensorflow.lite.DataType$1 */
    /* loaded from: classes6.dex */
    static /* synthetic */ class C68511 {
        static final /* synthetic */ int[] $SwitchMap$org$tensorflow$lite$DataType;

        static {
            int[] iArr = new int[DataType.values().length];
            $SwitchMap$org$tensorflow$lite$DataType = iArr;
            try {
                iArr[DataType.FLOAT32.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$tensorflow$lite$DataType[DataType.INT32.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$tensorflow$lite$DataType[DataType.UINT8.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$tensorflow$lite$DataType[DataType.INT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$tensorflow$lite$DataType[DataType.STRING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public int byteSize() {
        int i = C68511.$SwitchMap$org$tensorflow$lite$DataType[ordinal()];
        if (i == 1 || i == 2) {
            return 4;
        }
        if (i != 3) {
            if (i != 4) {
                if (i == 5) {
                    return -1;
                }
                throw new IllegalArgumentException("DataType error: DataType " + this + " is not supported yet");
            }
            return 8;
        }
        return 1;
    }

    /* renamed from: c */
    int m22c() {
        return this.value;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DataType fromC(int c) {
        DataType[] dataTypeArr;
        for (DataType dataType : values) {
            if (dataType.value == c) {
                return dataType;
            }
        }
        throw new IllegalArgumentException("DataType error: DataType " + c + " is not recognized in Java (version " + TensorFlowLite.version() + ")");
    }

    String toStringName() {
        int i = C68511.$SwitchMap$org$tensorflow$lite$DataType[ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i == 5) {
                            return "string";
                        }
                        throw new IllegalArgumentException("DataType error: DataType " + this + " is not supported yet");
                    }
                    return "long";
                }
                return "byte";
            }
            return "int";
        }
        return "float";
    }
}
