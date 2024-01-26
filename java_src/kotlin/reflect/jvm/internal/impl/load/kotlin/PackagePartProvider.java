package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: PackagePartProvider.kt */
/* loaded from: classes4.dex */
public interface PackagePartProvider {
    List<String> findPackageParts(String str);

    /* compiled from: PackagePartProvider.kt */
    /* loaded from: classes4.dex */
    public static final class Empty implements PackagePartProvider {
        public static final Empty INSTANCE = new Empty();

        private Empty() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.PackagePartProvider
        public List<String> findPackageParts(String packageFqName) {
            List<String> emptyList;
            Intrinsics.checkNotNullParameter(packageFqName, "packageFqName");
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
    }
}
