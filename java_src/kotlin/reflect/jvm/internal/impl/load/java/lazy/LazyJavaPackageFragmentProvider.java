package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import java.util.Collection;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized;
import kotlin.reflect.jvm.internal.impl.load.java.JavaClassFinder$$Util;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.TypeParameterResolver;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageFragment;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaPackage;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.storage.CacheWithNotNullValues;
import kotlin.reflect.jvm.internal.impl.utils.CollectionsKt;
/* compiled from: LazyJavaPackageFragmentProvider.kt */
/* loaded from: classes4.dex */
public final class LazyJavaPackageFragmentProvider implements PackageFragmentProviderOptimized {

    /* renamed from: c */
    private final LazyJavaResolverContext f1361c;
    private final CacheWithNotNullValues<FqName, LazyJavaPackageFragment> packageFragments;

    public LazyJavaPackageFragmentProvider(JavaResolverComponents components) {
        Lazy lazyOf;
        Intrinsics.checkNotNullParameter(components, "components");
        TypeParameterResolver.EMPTY empty = TypeParameterResolver.EMPTY.INSTANCE;
        lazyOf = LazyKt__LazyKt.lazyOf(null);
        LazyJavaResolverContext lazyJavaResolverContext = new LazyJavaResolverContext(components, empty, lazyOf);
        this.f1361c = lazyJavaResolverContext;
        this.packageFragments = lazyJavaResolverContext.getStorageManager().createCacheWithNotNullValues();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProvider
    public /* bridge */ /* synthetic */ Collection getSubPackagesOf(FqName fqName, Function1 function1) {
        return getSubPackagesOf(fqName, (Function1<? super Name, Boolean>) function1);
    }

    private final LazyJavaPackageFragment getPackageFragment(FqName fqName) {
        final JavaPackage findPackage$default = JavaClassFinder$$Util.findPackage$default(this.f1361c.getComponents().getFinder(), fqName, false, 2, null);
        if (findPackage$default == null) {
            return null;
        }
        return this.packageFragments.computeIfAbsent(fqName, new Function0<LazyJavaPackageFragment>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaPackageFragmentProvider$getPackageFragment$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final LazyJavaPackageFragment invoke() {
                LazyJavaResolverContext lazyJavaResolverContext;
                lazyJavaResolverContext = LazyJavaPackageFragmentProvider.this.f1361c;
                return new LazyJavaPackageFragment(lazyJavaResolverContext, findPackage$default);
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProvider
    public List<LazyJavaPackageFragment> getPackageFragments(FqName fqName) {
        List<LazyJavaPackageFragment> listOfNotNull;
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(getPackageFragment(fqName));
        return listOfNotNull;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized
    public void collectPackageFragments(FqName fqName, Collection<PackageFragmentDescriptor> packageFragments) {
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        Intrinsics.checkNotNullParameter(packageFragments, "packageFragments");
        CollectionsKt.addIfNotNull(packageFragments, getPackageFragment(fqName));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized
    public boolean isEmpty(FqName fqName) {
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        return JavaClassFinder$$Util.findPackage$default(this.f1361c.getComponents().getFinder(), fqName, false, 2, null) == null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProvider
    public List<FqName> getSubPackagesOf(FqName fqName, Function1<? super Name, Boolean> nameFilter) {
        List<FqName> emptyList;
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        Intrinsics.checkNotNullParameter(nameFilter, "nameFilter");
        LazyJavaPackageFragment packageFragment = getPackageFragment(fqName);
        List<FqName> subPackageFqNames$descriptors_jvm = packageFragment != null ? packageFragment.getSubPackageFqNames$descriptors_jvm() : null;
        if (subPackageFqNames$descriptors_jvm == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        return subPackageFqNames$descriptors_jvm;
    }

    public String toString() {
        return "LazyJavaPackageFragmentProvider of module " + this.f1361c.getComponents().getModule();
    }
}
