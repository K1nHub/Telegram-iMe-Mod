package kotlin.reflect.jvm.internal.calls;

import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.KotlinReflectionInternalError;
import kotlin.reflect.jvm.internal.UtilKt;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ReceiverParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.VariableDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.InlineClassesUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
/* compiled from: InlineClassAwareCaller.kt */
/* loaded from: classes4.dex */
public final class InlineClassAwareCallerKt {
    public static /* synthetic */ Caller createInlineClassAwareCallerIfNeeded$default(Caller caller, CallableMemberDescriptor callableMemberDescriptor, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return createInlineClassAwareCallerIfNeeded(caller, callableMemberDescriptor, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <M extends Member> Caller<M> createInlineClassAwareCallerIfNeeded(Caller<? extends M> caller, CallableMemberDescriptor descriptor, boolean z) {
        boolean z2;
        Intrinsics.checkNotNullParameter(caller, "<this>");
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        boolean z3 = true;
        if (!InlineClassesUtilsKt.isGetterOfUnderlyingPropertyOfInlineClass(descriptor)) {
            List<ValueParameterDescriptor> valueParameters = descriptor.getValueParameters();
            Intrinsics.checkNotNullExpressionValue(valueParameters, "descriptor.valueParameters");
            if (!(valueParameters instanceof Collection) || !valueParameters.isEmpty()) {
                for (ValueParameterDescriptor valueParameterDescriptor : valueParameters) {
                    KotlinType type = valueParameterDescriptor.getType();
                    Intrinsics.checkNotNullExpressionValue(type, "it.type");
                    if (InlineClassesUtilsKt.isInlineClassType(type)) {
                        z2 = true;
                        break;
                    }
                }
            }
            z2 = false;
            if (!z2) {
                KotlinType returnType = descriptor.getReturnType();
                if (!(returnType != null && InlineClassesUtilsKt.isInlineClassType(returnType)) && ((caller instanceof BoundCaller) || !hasInlineClassReceiver(descriptor))) {
                    z3 = false;
                }
            }
        }
        return z3 ? new InlineClassAwareCaller(descriptor, caller, z) : caller;
    }

    private static final boolean hasInlineClassReceiver(CallableMemberDescriptor callableMemberDescriptor) {
        KotlinType expectedReceiverType = getExpectedReceiverType(callableMemberDescriptor);
        return expectedReceiverType != null && InlineClassesUtilsKt.isInlineClassType(expectedReceiverType);
    }

    public static final Method getUnboxMethod(Class<?> cls, CallableMemberDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        try {
            Method declaredMethod = cls.getDeclaredMethod("unbox-impl", new Class[0]);
            Intrinsics.checkNotNullExpressionValue(declaredMethod, "{\n        getDeclaredMet…LINE_CLASS_MEMBERS)\n    }");
            return declaredMethod;
        } catch (NoSuchMethodException unused) {
            throw new KotlinReflectionInternalError("No unbox method found in inline class: " + cls + " (calling " + descriptor + ')');
        }
    }

    public static final Method getBoxMethod(Class<?> cls, CallableMemberDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        try {
            Method declaredMethod = cls.getDeclaredMethod("box-impl", getUnboxMethod(cls, descriptor).getReturnType());
            Intrinsics.checkNotNullExpressionValue(declaredMethod, "{\n        getDeclaredMet…riptor).returnType)\n    }");
            return declaredMethod;
        } catch (NoSuchMethodException unused) {
            throw new KotlinReflectionInternalError("No box method found in inline class: " + cls + " (calling " + descriptor + ')');
        }
    }

    public static final Class<?> toInlineClass(KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        Class<?> inlineClass = toInlineClass(kotlinType.getConstructor().mo2046getDeclarationDescriptor());
        if (inlineClass == null) {
            return null;
        }
        if (TypeUtils.isNullableType(kotlinType)) {
            KotlinType unsubstitutedUnderlyingType = InlineClassesUtilsKt.unsubstitutedUnderlyingType(kotlinType);
            if (unsubstitutedUnderlyingType == null || TypeUtils.isNullableType(unsubstitutedUnderlyingType) || KotlinBuiltIns.isPrimitiveType(unsubstitutedUnderlyingType)) {
                return null;
            }
            return inlineClass;
        }
        return inlineClass;
    }

    public static final Class<?> toInlineClass(DeclarationDescriptor declarationDescriptor) {
        if ((declarationDescriptor instanceof ClassDescriptor) && InlineClassesUtilsKt.isInlineClass(declarationDescriptor)) {
            ClassDescriptor classDescriptor = (ClassDescriptor) declarationDescriptor;
            Class<?> javaClass = UtilKt.toJavaClass(classDescriptor);
            if (javaClass != null) {
                return javaClass;
            }
            throw new KotlinReflectionInternalError("Class object for the class " + classDescriptor.getName() + " cannot be found (classId=" + DescriptorUtilsKt.getClassId((ClassifierDescriptor) declarationDescriptor) + ')');
        }
        return null;
    }

    private static final KotlinType getExpectedReceiverType(CallableMemberDescriptor callableMemberDescriptor) {
        ReceiverParameterDescriptor extensionReceiverParameter = callableMemberDescriptor.getExtensionReceiverParameter();
        ReceiverParameterDescriptor dispatchReceiverParameter = callableMemberDescriptor.getDispatchReceiverParameter();
        if (extensionReceiverParameter != null) {
            return extensionReceiverParameter.getType();
        }
        if (dispatchReceiverParameter == null) {
            return null;
        }
        if (callableMemberDescriptor instanceof ConstructorDescriptor) {
            return dispatchReceiverParameter.getType();
        }
        DeclarationDescriptor containingDeclaration = callableMemberDescriptor.getContainingDeclaration();
        ClassDescriptor classDescriptor = containingDeclaration instanceof ClassDescriptor ? (ClassDescriptor) containingDeclaration : null;
        if (classDescriptor != null) {
            return classDescriptor.getDefaultType();
        }
        return null;
    }

    public static final Object coerceToExpectedReceiverType(Object obj, CallableMemberDescriptor descriptor) {
        KotlinType expectedReceiverType;
        Class<?> inlineClass;
        Method unboxMethod;
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return (((descriptor instanceof PropertyDescriptor) && InlineClassesUtilsKt.isUnderlyingPropertyOfInlineClass((VariableDescriptor) descriptor)) || (expectedReceiverType = getExpectedReceiverType(descriptor)) == null || (inlineClass = toInlineClass(expectedReceiverType)) == null || (unboxMethod = getUnboxMethod(inlineClass, descriptor)) == null) ? obj : unboxMethod.invoke(obj, new Object[0]);
    }
}
