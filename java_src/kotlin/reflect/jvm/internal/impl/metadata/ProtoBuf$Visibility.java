package kotlin.reflect.jvm.internal.impl.metadata;

import kotlin.reflect.jvm.internal.impl.protobuf.Internal;
/* loaded from: classes4.dex */
public enum ProtoBuf$Visibility implements Internal.EnumLite {
    INTERNAL(0, 0),
    PRIVATE(1, 1),
    PROTECTED(2, 2),
    PUBLIC(3, 3),
    PRIVATE_TO_THIS(4, 4),
    LOCAL(5, 5);
    
    private static Internal.EnumLiteMap<ProtoBuf$Visibility> internalValueMap = new Internal.EnumLiteMap<ProtoBuf$Visibility>() { // from class: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Visibility.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.EnumLiteMap
        public ProtoBuf$Visibility findValueByNumber(int i) {
            return ProtoBuf$Visibility.valueOf(i);
        }
    };
    private final int value;

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.EnumLite
    public final int getNumber() {
        return this.value;
    }

    public static ProtoBuf$Visibility valueOf(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            if (i != 5) {
                                return null;
                            }
                            return LOCAL;
                        }
                        return PRIVATE_TO_THIS;
                    }
                    return PUBLIC;
                }
                return PROTECTED;
            }
            return PRIVATE;
        }
        return INTERNAL;
    }

    ProtoBuf$Visibility(int i, int i2) {
        this.value = i2;
    }
}
