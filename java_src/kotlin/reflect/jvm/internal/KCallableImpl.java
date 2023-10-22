package kotlin.reflect.jvm.internal;

import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KCallable;
import kotlin.reflect.KParameter;
import kotlin.reflect.KType;
import kotlin.reflect.full.IllegalCallableAccessException;
import kotlin.reflect.jvm.KTypesJvm;
import kotlin.reflect.jvm.ReflectJvmMapping;
import kotlin.reflect.jvm.internal.ReflectProperties;
import kotlin.reflect.jvm.internal.calls.Caller;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ReceiverParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaCallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* compiled from: KCallableImpl.kt */
/* loaded from: classes4.dex */
public abstract class KCallableImpl<R> implements KCallable<R>, KTypeParameterOwnerImpl {
    private final ReflectProperties.LazySoftVal<ArrayList<KParameter>> _parameters;

    public abstract Caller<?> getCaller();

    public abstract KDeclarationContainerImpl getContainer();

    public abstract Caller<?> getDefaultCaller();

    public abstract CallableMemberDescriptor getDescriptor();

    public abstract boolean isBound();

    public KCallableImpl() {
        Intrinsics.checkNotNullExpressionValue(ReflectProperties.lazySoft(new Function0<List<? extends Annotation>>(this) { // from class: kotlin.reflect.jvm.internal.KCallableImpl$_annotations$1
            final /* synthetic */ KCallableImpl<R> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final List<? extends Annotation> invoke() {
                return UtilKt.computeAnnotations(this.this$0.getDescriptor());
            }
        }), "lazySoft { descriptor.computeAnnotations() }");
        ReflectProperties.LazySoftVal<ArrayList<KParameter>> lazySoft = ReflectProperties.lazySoft(new Function0<ArrayList<KParameter>>(this) { // from class: kotlin.reflect.jvm.internal.KCallableImpl$_parameters$1
            final /* synthetic */ KCallableImpl<R> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final ArrayList<KParameter> invoke() {
                int i;
                final CallableMemberDescriptor descriptor = this.this$0.getDescriptor();
                ArrayList<KParameter> arrayList = new ArrayList<>();
                final int i2 = 0;
                if (this.this$0.isBound()) {
                    i = 0;
                } else {
                    final ReceiverParameterDescriptor instanceReceiverParameter = UtilKt.getInstanceReceiverParameter(descriptor);
                    if (instanceReceiverParameter != null) {
                        arrayList.add(new KParameterImpl(this.this$0, 0, KParameter.Kind.INSTANCE, new Function0<ParameterDescriptor>() { // from class: kotlin.reflect.jvm.internal.KCallableImpl$_parameters$1.1
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            public final ParameterDescriptor invoke() {
                                return ReceiverParameterDescriptor.this;
                            }
                        }));
                        i = 1;
                    } else {
                        i = 0;
                    }
                    final ReceiverParameterDescriptor extensionReceiverParameter = descriptor.getExtensionReceiverParameter();
                    if (extensionReceiverParameter != null) {
                        arrayList.add(new KParameterImpl(this.this$0, i, KParameter.Kind.EXTENSION_RECEIVER, new Function0<ParameterDescriptor>() { // from class: kotlin.reflect.jvm.internal.KCallableImpl$_parameters$1.2
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            public final ParameterDescriptor invoke() {
                                return ReceiverParameterDescriptor.this;
                            }
                        }));
                        i++;
                    }
                }
                int size = descriptor.getValueParameters().size();
                while (i2 < size) {
                    arrayList.add(new KParameterImpl(this.this$0, i, KParameter.Kind.VALUE, new Function0<ParameterDescriptor>() { // from class: kotlin.reflect.jvm.internal.KCallableImpl$_parameters$1.3
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public final ParameterDescriptor invoke() {
                            ValueParameterDescriptor valueParameterDescriptor = CallableMemberDescriptor.this.getValueParameters().get(i2);
                            Intrinsics.checkNotNullExpressionValue(valueParameterDescriptor, "descriptor.valueParameters[i]");
                            return valueParameterDescriptor;
                        }
                    }));
                    i2++;
                    i++;
                }
                if (this.this$0.isAnnotationConstructor() && (descriptor instanceof JavaCallableMemberDescriptor) && arrayList.size() > 1) {
                    CollectionsKt__MutableCollectionsJVMKt.sortWith(arrayList, new Comparator() { // from class: kotlin.reflect.jvm.internal.KCallableImpl$_parameters$1$invoke$$inlined$sortBy$1
                        @Override // java.util.Comparator
                        public final int compare(T t, T t2) {
                            int compareValues;
                            compareValues = ComparisonsKt__ComparisonsKt.compareValues(((KParameter) t).getName(), ((KParameter) t2).getName());
                            return compareValues;
                        }
                    });
                }
                arrayList.trimToSize();
                return arrayList;
            }
        });
        Intrinsics.checkNotNullExpressionValue(lazySoft, "lazySoft {\n        val d…ze()\n        result\n    }");
        this._parameters = lazySoft;
        Intrinsics.checkNotNullExpressionValue(ReflectProperties.lazySoft(new Function0<KTypeImpl>(this) { // from class: kotlin.reflect.jvm.internal.KCallableImpl$_returnType$1
            final /* synthetic */ KCallableImpl<R> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final KTypeImpl invoke() {
                KotlinType returnType = this.this$0.getDescriptor().getReturnType();
                Intrinsics.checkNotNull(returnType);
                final KCallableImpl<R> kCallableImpl = this.this$0;
                return new KTypeImpl(returnType, new Function0<Type>() { // from class: kotlin.reflect.jvm.internal.KCallableImpl$_returnType$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final Type invoke() {
                        Type extractContinuationArgument;
                        extractContinuationArgument = kCallableImpl.extractContinuationArgument();
                        return extractContinuationArgument == null ? kCallableImpl.getCaller().getReturnType() : extractContinuationArgument;
                    }
                });
            }
        }), "lazySoft {\n        KType…eturnType\n        }\n    }");
        Intrinsics.checkNotNullExpressionValue(ReflectProperties.lazySoft(new Function0<List<? extends KTypeParameterImpl>>(this) { // from class: kotlin.reflect.jvm.internal.KCallableImpl$_typeParameters$1
            final /* synthetic */ KCallableImpl<R> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final List<? extends KTypeParameterImpl> invoke() {
                int collectionSizeOrDefault;
                List<TypeParameterDescriptor> typeParameters = this.this$0.getDescriptor().getTypeParameters();
                Intrinsics.checkNotNullExpressionValue(typeParameters, "descriptor.typeParameters");
                KTypeParameterOwnerImpl kTypeParameterOwnerImpl = this.this$0;
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(typeParameters, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                for (TypeParameterDescriptor descriptor : typeParameters) {
                    Intrinsics.checkNotNullExpressionValue(descriptor, "descriptor");
                    arrayList.add(new KTypeParameterImpl(kTypeParameterOwnerImpl, descriptor));
                }
                return arrayList;
            }
        }), "lazySoft {\n        descr…this, descriptor) }\n    }");
        Intrinsics.checkNotNullExpressionValue(ReflectProperties.lazySoft(new Function0<Object[]>(this) { // from class: kotlin.reflect.jvm.internal.KCallableImpl$_absentArguments$1
            final /* synthetic */ KCallableImpl<R> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object[] invoke() {
                Object defaultEmptyArray;
                int size = this.this$0.getParameters().size() + (this.this$0.isSuspend() ? 1 : 0);
                int size2 = ((this.this$0.getParameters().size() + 32) - 1) / 32;
                Object[] objArr = new Object[size + size2 + 1];
                List<KParameter> parameters = this.this$0.getParameters();
                KCallableImpl<R> kCallableImpl = this.this$0;
                for (KParameter kParameter : parameters) {
                    if (kParameter.isOptional() && !UtilKt.isInlineClassType(kParameter.getType())) {
                        objArr[kParameter.getIndex()] = UtilKt.defaultPrimitiveValue(ReflectJvmMapping.getJavaType(kParameter.getType()));
                    } else if (kParameter.isVararg()) {
                        int index = kParameter.getIndex();
                        defaultEmptyArray = kCallableImpl.defaultEmptyArray(kParameter.getType());
                        objArr[index] = defaultEmptyArray;
                    }
                }
                for (int i = 0; i < size2; i++) {
                    objArr[size + i] = 0;
                }
                return objArr;
            }
        }), "lazySoft {\n        val p…\n\n        arguments\n    }");
    }

    public List<KParameter> getParameters() {
        ArrayList<KParameter> invoke = this._parameters.invoke();
        Intrinsics.checkNotNullExpressionValue(invoke, "_parameters()");
        return invoke;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean isAnnotationConstructor() {
        return Intrinsics.areEqual(getName(), "<init>") && getContainer().getJClass().isAnnotation();
    }

    @Override // kotlin.reflect.KCallable
    public R call(Object... args) {
        Intrinsics.checkNotNullParameter(args, "args");
        try {
            return (R) getCaller().call(args);
        } catch (IllegalAccessException e) {
            throw new IllegalCallableAccessException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object defaultEmptyArray(KType kType) {
        Class javaClass = JvmClassMappingKt.getJavaClass(KTypesJvm.getJvmErasure(kType));
        if (javaClass.isArray()) {
            Object newInstance = Array.newInstance(javaClass.getComponentType(), 0);
            Intrinsics.checkNotNullExpressionValue(newInstance, "type.jvmErasure.java.run…\"\n            )\n        }");
            return newInstance;
        }
        throw new KotlinReflectionInternalError("Cannot instantiate the default empty array of type " + javaClass.getSimpleName() + ", because it is not an array type");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Type extractContinuationArgument() {
        Type[] lowerBounds;
        if (isSuspend()) {
            Object lastOrNull = CollectionsKt.lastOrNull((List<? extends Object>) getCaller().getParameterTypes());
            ParameterizedType parameterizedType = lastOrNull instanceof ParameterizedType ? (ParameterizedType) lastOrNull : null;
            if (Intrinsics.areEqual(parameterizedType != null ? parameterizedType.getRawType() : null, Continuation.class)) {
                Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                Intrinsics.checkNotNullExpressionValue(actualTypeArguments, "continuationType.actualTypeArguments");
                Object single = ArraysKt.single(actualTypeArguments);
                WildcardType wildcardType = single instanceof WildcardType ? (WildcardType) single : null;
                if (wildcardType == null || (lowerBounds = wildcardType.getLowerBounds()) == null) {
                    return null;
                }
                return (Type) ArraysKt.first(lowerBounds);
            }
            return null;
        }
        return null;
    }
}
