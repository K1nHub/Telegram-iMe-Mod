package kotlin.reflect.jvm.internal.impl.metadata.deserialization;

import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable;
/* compiled from: TypeTable.kt */
/* loaded from: classes4.dex */
public final class TypeTable {
    private final List<ProtoBuf$Type> types;

    public TypeTable(ProtoBuf$TypeTable typeTable) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(typeTable, "typeTable");
        List<ProtoBuf$Type> typeList = typeTable.getTypeList();
        if (typeTable.hasFirstNullable()) {
            int firstNullable = typeTable.getFirstNullable();
            List<ProtoBuf$Type> typeList2 = typeTable.getTypeList();
            Intrinsics.checkNotNullExpressionValue(typeList2, "typeTable.typeList");
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(typeList2, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            int i = 0;
            for (Object obj : typeList2) {
                int i2 = i + 1;
                if (i < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                ProtoBuf$Type protoBuf$Type = (ProtoBuf$Type) obj;
                if (i >= firstNullable) {
                    protoBuf$Type = protoBuf$Type.toBuilder().setNullable(true).build();
                }
                arrayList.add(protoBuf$Type);
                i = i2;
            }
            typeList = arrayList;
        }
        Intrinsics.checkNotNullExpressionValue(typeList, "run {\n        val origin… else originalTypes\n    }");
        this.types = typeList;
    }

    public final ProtoBuf$Type get(int i) {
        return this.types.get(i);
    }
}
