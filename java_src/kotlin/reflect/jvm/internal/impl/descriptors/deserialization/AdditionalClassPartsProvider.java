package kotlin.reflect.jvm.internal.impl.descriptors.deserialization;

import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* compiled from: AdditionalClassPartsProvider.kt */
/* loaded from: classes4.dex */
public interface AdditionalClassPartsProvider {
    Collection<ClassConstructorDescriptor> getConstructors(ClassDescriptor classDescriptor);

    Collection<SimpleFunctionDescriptor> getFunctions(Name name, ClassDescriptor classDescriptor);

    Collection<Name> getFunctionsNames(ClassDescriptor classDescriptor);

    Collection<KotlinType> getSupertypes(ClassDescriptor classDescriptor);

    /* compiled from: AdditionalClassPartsProvider.kt */
    /* loaded from: classes4.dex */
    public static final class None implements AdditionalClassPartsProvider {
        public static final None INSTANCE = new None();

        private None() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider
        public Collection<KotlinType> getSupertypes(ClassDescriptor classDescriptor) {
            List emptyList;
            Intrinsics.checkNotNullParameter(classDescriptor, "classDescriptor");
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider
        public Collection<SimpleFunctionDescriptor> getFunctions(Name name, ClassDescriptor classDescriptor) {
            List emptyList;
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(classDescriptor, "classDescriptor");
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider
        public Collection<Name> getFunctionsNames(ClassDescriptor classDescriptor) {
            List emptyList;
            Intrinsics.checkNotNullParameter(classDescriptor, "classDescriptor");
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider
        public Collection<ClassConstructorDescriptor> getConstructors(ClassDescriptor classDescriptor) {
            List emptyList;
            Intrinsics.checkNotNullParameter(classDescriptor, "classDescriptor");
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
    }
}
