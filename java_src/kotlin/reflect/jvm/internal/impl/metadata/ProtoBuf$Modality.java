package kotlin.reflect.jvm.internal.impl.metadata;

import kotlin.reflect.jvm.internal.impl.protobuf.Internal;
/* loaded from: classes4.dex */
public enum ProtoBuf$Modality implements Internal.EnumLite {
    FINAL(0, 0),
    OPEN(1, 1),
    ABSTRACT(2, 2),
    SEALED(3, 3);
    
    private static Internal.EnumLiteMap<ProtoBuf$Modality> internalValueMap = new Internal.EnumLiteMap<ProtoBuf$Modality>() { // from class: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Modality.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.EnumLiteMap
        public ProtoBuf$Modality findValueByNumber(int i) {
            return ProtoBuf$Modality.valueOf(i);
        }
    };
    private final int value;

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.EnumLite
    public final int getNumber() {
        return this.value;
    }

    public static ProtoBuf$Modality valueOf(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        return null;
                    }
                    return SEALED;
                }
                return ABSTRACT;
            }
            return OPEN;
        }
        return FINAL;
    }

    ProtoBuf$Modality(int i, int i2) {
        this.value = i2;
    }
}
