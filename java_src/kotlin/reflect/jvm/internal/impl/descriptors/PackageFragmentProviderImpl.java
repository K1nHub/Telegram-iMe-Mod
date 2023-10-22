package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
/* compiled from: PackageFragmentProviderImpl.kt */
/* loaded from: classes4.dex */
public final class PackageFragmentProviderImpl implements PackageFragmentProviderOptimized {
    private final Collection<PackageFragmentDescriptor> packageFragments;

    /* JADX WARN: Multi-variable type inference failed */
    public PackageFragmentProviderImpl(Collection<? extends PackageFragmentDescriptor> packageFragments) {
        Intrinsics.checkNotNullParameter(packageFragments, "packageFragments");
        this.packageFragments = packageFragments;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized
    public void collectPackageFragments(FqName fqName, Collection<PackageFragmentDescriptor> packageFragments) {
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        Intrinsics.checkNotNullParameter(packageFragments, "packageFragments");
        for (Object obj : this.packageFragments) {
            if (Intrinsics.areEqual(((PackageFragmentDescriptor) obj).getFqName(), fqName)) {
                packageFragments.add(obj);
            }
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized
    public boolean isEmpty(FqName fqName) {
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        Collection<PackageFragmentDescriptor> collection = this.packageFragments;
        if ((collection instanceof Collection) && collection.isEmpty()) {
            return true;
        }
        for (PackageFragmentDescriptor packageFragmentDescriptor : collection) {
            if (Intrinsics.areEqual(packageFragmentDescriptor.getFqName(), fqName)) {
                return false;
            }
        }
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProvider
    public List<PackageFragmentDescriptor> getPackageFragments(FqName fqName) {
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        Collection<PackageFragmentDescriptor> collection = this.packageFragments;
        ArrayList arrayList = new ArrayList();
        for (Object obj : collection) {
            if (Intrinsics.areEqual(((PackageFragmentDescriptor) obj).getFqName(), fqName)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProvider
    public Collection<FqName> getSubPackagesOf(final FqName fqName, Function1<? super Name, Boolean> nameFilter) {
        Sequence asSequence;
        Sequence map;
        Sequence filter;
        List list;
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        Intrinsics.checkNotNullParameter(nameFilter, "nameFilter");
        asSequence = CollectionsKt___CollectionsKt.asSequence(this.packageFragments);
        map = SequencesKt___SequencesKt.map(asSequence, new Function1<PackageFragmentDescriptor, FqName>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderImpl$getSubPackagesOf$1
            @Override // kotlin.jvm.functions.Function1
            public final FqName invoke(PackageFragmentDescriptor it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return it.getFqName();
            }
        });
        filter = SequencesKt___SequencesKt.filter(map, new Function1<FqName, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderImpl$getSubPackagesOf$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(FqName it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Boolean.valueOf(!it.isRoot() && Intrinsics.areEqual(it.parent(), FqName.this));
            }
        });
        list = SequencesKt___SequencesKt.toList(filter);
        return list;
    }
}
