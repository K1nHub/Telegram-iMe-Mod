package kotlin.reflect.jvm.internal.impl.metadata;

import kotlin.reflect.jvm.internal.impl.protobuf.Internal;
/* loaded from: classes4.dex */
public enum ProtoBuf$MemberKind implements Internal.EnumLite {
    DECLARATION(0, 0),
    FAKE_OVERRIDE(1, 1),
    DELEGATION(2, 2),
    SYNTHESIZED(3, 3);
    
    private static Internal.EnumLiteMap<ProtoBuf$MemberKind> internalValueMap = new Internal.EnumLiteMap<ProtoBuf$MemberKind>() { // from class: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$MemberKind.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.EnumLiteMap
        public ProtoBuf$MemberKind findValueByNumber(int i) {
            return ProtoBuf$MemberKind.valueOf(i);
        }
    };
    private final int value;

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.EnumLite
    public final int getNumber() {
        return this.value;
    }

    public static ProtoBuf$MemberKind valueOf(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        return null;
                    }
                    return SYNTHESIZED;
                }
                return DELEGATION;
            }
            return FAKE_OVERRIDE;
        }
        return DECLARATION;
    }

    ProtoBuf$MemberKind(int i, int i2) {
        this.value = i2;
    }
}
