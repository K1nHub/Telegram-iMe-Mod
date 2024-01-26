package kotlin.reflect.jvm.internal;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KParameter;
import kotlin.reflect.KProperty;
import kotlin.reflect.KType;
import kotlin.reflect.jvm.internal.ReflectProperties;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ReceiverParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* compiled from: KParameterImpl.kt */
/* loaded from: classes4.dex */
public final class KParameterImpl implements KParameter {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(KParameterImpl.class), "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/ParameterDescriptor;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(KParameterImpl.class), "annotations", "getAnnotations()Ljava/util/List;"))};
    private final KCallableImpl<?> callable;
    private final ReflectProperties.LazySoftVal descriptor$delegate;
    private final int index;
    private final KParameter.Kind kind;

    public KParameterImpl(KCallableImpl<?> callable, int i, KParameter.Kind kind, Function0<? extends ParameterDescriptor> computeDescriptor) {
        Intrinsics.checkNotNullParameter(callable, "callable");
        Intrinsics.checkNotNullParameter(kind, "kind");
        Intrinsics.checkNotNullParameter(computeDescriptor, "computeDescriptor");
        this.callable = callable;
        this.index = i;
        this.kind = kind;
        this.descriptor$delegate = ReflectProperties.lazySoft(computeDescriptor);
        ReflectProperties.lazySoft(new Function0<List<? extends Annotation>>() { // from class: kotlin.reflect.jvm.internal.KParameterImpl$annotations$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final List<? extends Annotation> invoke() {
                ParameterDescriptor descriptor;
                descriptor = KParameterImpl.this.getDescriptor();
                return UtilKt.computeAnnotations(descriptor);
            }
        });
    }

    public final KCallableImpl<?> getCallable() {
        return this.callable;
    }

    @Override // kotlin.reflect.KParameter
    public int getIndex() {
        return this.index;
    }

    public KParameter.Kind getKind() {
        return this.kind;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ParameterDescriptor getDescriptor() {
        T value = this.descriptor$delegate.getValue(this, $$delegatedProperties[0]);
        Intrinsics.checkNotNullExpressionValue(value, "<get-descriptor>(...)");
        return (ParameterDescriptor) value;
    }

    @Override // kotlin.reflect.KParameter
    public String getName() {
        ParameterDescriptor descriptor = getDescriptor();
        ValueParameterDescriptor valueParameterDescriptor = descriptor instanceof ValueParameterDescriptor ? (ValueParameterDescriptor) descriptor : null;
        if (valueParameterDescriptor == null || valueParameterDescriptor.getContainingDeclaration().hasSynthesizedParameterNames()) {
            return null;
        }
        Name name = valueParameterDescriptor.getName();
        Intrinsics.checkNotNullExpressionValue(name, "valueParameter.name");
        if (name.isSpecial()) {
            return null;
        }
        return name.asString();
    }

    @Override // kotlin.reflect.KParameter
    public KType getType() {
        KotlinType type = getDescriptor().getType();
        Intrinsics.checkNotNullExpressionValue(type, "descriptor.type");
        return new KTypeImpl(type, new Function0<Type>() { // from class: kotlin.reflect.jvm.internal.KParameterImpl$type$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Type invoke() {
                ParameterDescriptor descriptor;
                descriptor = KParameterImpl.this.getDescriptor();
                if ((descriptor instanceof ReceiverParameterDescriptor) && Intrinsics.areEqual(UtilKt.getInstanceReceiverParameter(KParameterImpl.this.getCallable().getDescriptor()), descriptor) && KParameterImpl.this.getCallable().getDescriptor().getKind() == CallableMemberDescriptor.Kind.FAKE_OVERRIDE) {
                    DeclarationDescriptor containingDeclaration = KParameterImpl.this.getCallable().getDescriptor().getContainingDeclaration();
                    Intrinsics.checkNotNull(containingDeclaration, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                    Class<?> javaClass = UtilKt.toJavaClass((ClassDescriptor) containingDeclaration);
                    if (javaClass != null) {
                        return javaClass;
                    }
                    throw new KotlinReflectionInternalError("Cannot determine receiver Java type of inherited declaration: " + descriptor);
                }
                return KParameterImpl.this.getCallable().getCaller().getParameterTypes().get(KParameterImpl.this.getIndex());
            }
        });
    }

    @Override // kotlin.reflect.KParameter
    public boolean isOptional() {
        ParameterDescriptor descriptor = getDescriptor();
        ValueParameterDescriptor valueParameterDescriptor = descriptor instanceof ValueParameterDescriptor ? (ValueParameterDescriptor) descriptor : null;
        if (valueParameterDescriptor != null) {
            return DescriptorUtilsKt.declaresOrInheritsDefaultValue(valueParameterDescriptor);
        }
        return false;
    }

    @Override // kotlin.reflect.KParameter
    public boolean isVararg() {
        ParameterDescriptor descriptor = getDescriptor();
        return (descriptor instanceof ValueParameterDescriptor) && ((ValueParameterDescriptor) descriptor).getVarargElementType() != null;
    }

    public boolean equals(Object obj) {
        if (obj instanceof KParameterImpl) {
            KParameterImpl kParameterImpl = (KParameterImpl) obj;
            if (Intrinsics.areEqual(this.callable, kParameterImpl.callable) && getIndex() == kParameterImpl.getIndex()) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (this.callable.hashCode() * 31) + getIndex();
    }

    public String toString() {
        return ReflectionObjectRenderer.INSTANCE.renderParameter(this);
    }
}
