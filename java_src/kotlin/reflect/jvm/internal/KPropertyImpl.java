package kotlin.reflect.jvm.internal;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.CallableReference;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KFunction;
import kotlin.reflect.KMutableProperty;
import kotlin.reflect.KProperty;
import kotlin.reflect.full.IllegalPropertyDelegateAccessException;
import kotlin.reflect.jvm.KCallablesJvm;
import kotlin.reflect.jvm.internal.JvmPropertySignature;
import kotlin.reflect.jvm.internal.KPropertyImpl;
import kotlin.reflect.jvm.internal.ReflectProperties;
import kotlin.reflect.jvm.internal.calls.Caller;
import kotlin.reflect.jvm.internal.calls.InlineClassAwareCallerKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyAccessorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyGetterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertySetterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.load.java.DescriptorsJvmAbiUtil;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMemberSignature;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmProtoBufUtil;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
/* compiled from: KPropertyImpl.kt */
/* loaded from: classes4.dex */
public abstract class KPropertyImpl<V> extends KCallableImpl<V> implements KProperty<V> {
    private static final Object EXTENSION_PROPERTY_DELEGATE;
    private final ReflectProperties.LazySoftVal<PropertyDescriptor> _descriptor;
    private final Lazy<Field> _javaField;
    private final KDeclarationContainerImpl container;
    private final String name;
    private final Object rawBoundReceiver;
    private final String signature;

    public abstract Getter<V> getGetter();

    @Override // kotlin.reflect.KCallable
    public boolean isSuspend() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    public KDeclarationContainerImpl getContainer() {
        return this.container;
    }

    @Override // kotlin.reflect.KCallable
    public String getName() {
        return this.name;
    }

    public final String getSignature() {
        return this.signature;
    }

    private KPropertyImpl(KDeclarationContainerImpl kDeclarationContainerImpl, String str, String str2, PropertyDescriptor propertyDescriptor, Object obj) {
        Lazy<Field> lazy;
        this.container = kDeclarationContainerImpl;
        this.name = str;
        this.signature = str2;
        this.rawBoundReceiver = obj;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0<Field>(this) { // from class: kotlin.reflect.jvm.internal.KPropertyImpl$_javaField$1
            final /* synthetic */ KPropertyImpl<V> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Field invoke() {
                Class<?> enclosingClass;
                JvmPropertySignature mapPropertySignature = RuntimeTypeMapper.INSTANCE.mapPropertySignature(this.this$0.getDescriptor());
                if (mapPropertySignature instanceof JvmPropertySignature.KotlinProperty) {
                    JvmPropertySignature.KotlinProperty kotlinProperty = (JvmPropertySignature.KotlinProperty) mapPropertySignature;
                    PropertyDescriptor descriptor = kotlinProperty.getDescriptor();
                    JvmMemberSignature.Field jvmFieldSignature$default = JvmProtoBufUtil.getJvmFieldSignature$default(JvmProtoBufUtil.INSTANCE, kotlinProperty.getProto(), kotlinProperty.getNameResolver(), kotlinProperty.getTypeTable(), false, 8, null);
                    if (jvmFieldSignature$default != null) {
                        KCallableImpl kCallableImpl = this.this$0;
                        if (DescriptorsJvmAbiUtil.isPropertyWithBackingFieldInOuterClass(descriptor) || JvmProtoBufUtil.isMovedFromInterfaceCompanion(kotlinProperty.getProto())) {
                            enclosingClass = kCallableImpl.getContainer().getJClass().getEnclosingClass();
                        } else {
                            DeclarationDescriptor containingDeclaration = descriptor.getContainingDeclaration();
                            enclosingClass = containingDeclaration instanceof ClassDescriptor ? UtilKt.toJavaClass((ClassDescriptor) containingDeclaration) : kCallableImpl.getContainer().getJClass();
                        }
                        if (enclosingClass != null) {
                            try {
                                return enclosingClass.getDeclaredField(jvmFieldSignature$default.getName());
                            } catch (NoSuchFieldException unused) {
                                return null;
                            }
                        }
                        return null;
                    }
                    return null;
                } else if (mapPropertySignature instanceof JvmPropertySignature.JavaField) {
                    return ((JvmPropertySignature.JavaField) mapPropertySignature).getField();
                } else {
                    if ((mapPropertySignature instanceof JvmPropertySignature.JavaMethodProperty) || (mapPropertySignature instanceof JvmPropertySignature.MappedKotlinProperty)) {
                        return null;
                    }
                    throw new NoWhenBranchMatchedException();
                }
            }
        });
        this._javaField = lazy;
        ReflectProperties.LazySoftVal<PropertyDescriptor> lazySoft = ReflectProperties.lazySoft(propertyDescriptor, new Function0<PropertyDescriptor>(this) { // from class: kotlin.reflect.jvm.internal.KPropertyImpl$_descriptor$1
            final /* synthetic */ KPropertyImpl<V> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final PropertyDescriptor invoke() {
                return this.this$0.getContainer().findPropertyDescriptor(this.this$0.getName(), this.this$0.getSignature());
            }
        });
        Intrinsics.checkNotNullExpressionValue(lazySoft, "lazySoft(descriptorIniti…or(name, signature)\n    }");
        this._descriptor = lazySoft;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public KPropertyImpl(KDeclarationContainerImpl container, String name, String signature, Object obj) {
        this(container, name, signature, null, obj);
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(signature, "signature");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public KPropertyImpl(kotlin.reflect.jvm.internal.KDeclarationContainerImpl r8, kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor r9) {
        /*
            r7 = this;
            java.lang.String r0 = "container"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            java.lang.String r0 = "descriptor"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            kotlin.reflect.jvm.internal.impl.name.Name r0 = r9.getName()
            java.lang.String r3 = r0.asString()
            java.lang.String r0 = "descriptor.name.asString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r0)
            kotlin.reflect.jvm.internal.RuntimeTypeMapper r0 = kotlin.reflect.jvm.internal.RuntimeTypeMapper.INSTANCE
            kotlin.reflect.jvm.internal.JvmPropertySignature r0 = r0.mapPropertySignature(r9)
            java.lang.String r4 = r0.asString()
            java.lang.Object r6 = kotlin.jvm.internal.CallableReference.NO_RECEIVER
            r1 = r7
            r2 = r8
            r5 = r9
            r1.<init>(r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.KPropertyImpl.<init>(kotlin.reflect.jvm.internal.KDeclarationContainerImpl, kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor):void");
    }

    public final Object getBoundReceiver() {
        return InlineClassAwareCallerKt.coerceToExpectedReceiverType(this.rawBoundReceiver, getDescriptor());
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    public boolean isBound() {
        return !Intrinsics.areEqual(this.rawBoundReceiver, CallableReference.NO_RECEIVER);
    }

    public final Field getJavaField() {
        return this._javaField.getValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Member computeDelegateSource() {
        if (getDescriptor().isDelegated()) {
            JvmPropertySignature mapPropertySignature = RuntimeTypeMapper.INSTANCE.mapPropertySignature(getDescriptor());
            if (mapPropertySignature instanceof JvmPropertySignature.KotlinProperty) {
                JvmPropertySignature.KotlinProperty kotlinProperty = (JvmPropertySignature.KotlinProperty) mapPropertySignature;
                if (kotlinProperty.getSignature().hasDelegateMethod()) {
                    JvmProtoBuf.JvmMethodSignature delegateMethod = kotlinProperty.getSignature().getDelegateMethod();
                    if (delegateMethod.hasName() && delegateMethod.hasDesc()) {
                        return getContainer().findMethodBySignature(kotlinProperty.getNameResolver().getString(delegateMethod.getName()), kotlinProperty.getNameResolver().getString(delegateMethod.getDesc()));
                    }
                    return null;
                }
            }
            return getJavaField();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Object getDelegateImpl(Member member, Object obj, Object obj2) {
        try {
            Object obj3 = EXTENSION_PROPERTY_DELEGATE;
            if ((obj == obj3 || obj2 == obj3) && getDescriptor().getExtensionReceiverParameter() == null) {
                throw new RuntimeException('\'' + this + "' is not an extension property and thus getExtensionDelegate() is not going to work, use getDelegate() instead");
            }
            Object boundReceiver = isBound() ? getBoundReceiver() : obj;
            if (!(boundReceiver != obj3)) {
                boundReceiver = null;
            }
            if (!isBound()) {
                obj = obj2;
            }
            if (!(obj != obj3)) {
                obj = null;
            }
            AccessibleObject accessibleObject = member instanceof AccessibleObject ? (AccessibleObject) member : null;
            if (accessibleObject != null) {
                accessibleObject.setAccessible(KCallablesJvm.isAccessible(this));
            }
            if (member == null) {
                return null;
            }
            if (member instanceof Field) {
                return ((Field) member).get(boundReceiver);
            }
            if (!(member instanceof Method)) {
                throw new AssertionError("delegate field/method " + member + " neither field nor method");
            }
            int length = ((Method) member).getParameterTypes().length;
            if (length != 0) {
                if (length == 1) {
                    Method method = (Method) member;
                    Object[] objArr = new Object[1];
                    if (boundReceiver == null) {
                        Class<?> cls = ((Method) member).getParameterTypes()[0];
                        Intrinsics.checkNotNullExpressionValue(cls, "fieldOrMethod.parameterTypes[0]");
                        boundReceiver = UtilKt.defaultPrimitiveValue(cls);
                    }
                    objArr[0] = boundReceiver;
                    return method.invoke(null, objArr);
                } else if (length == 2) {
                    Method method2 = (Method) member;
                    Object[] objArr2 = new Object[2];
                    objArr2[0] = boundReceiver;
                    if (obj == null) {
                        Class<?> cls2 = ((Method) member).getParameterTypes()[1];
                        Intrinsics.checkNotNullExpressionValue(cls2, "fieldOrMethod.parameterTypes[1]");
                        obj = UtilKt.defaultPrimitiveValue(cls2);
                    }
                    objArr2[1] = obj;
                    return method2.invoke(null, objArr2);
                } else {
                    throw new AssertionError("delegate method " + member + " should take 0, 1, or 2 parameters");
                }
            }
            return ((Method) member).invoke(null, new Object[0]);
        } catch (IllegalAccessException e) {
            throw new IllegalPropertyDelegateAccessException(e);
        }
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    public PropertyDescriptor getDescriptor() {
        PropertyDescriptor invoke = this._descriptor.invoke();
        Intrinsics.checkNotNullExpressionValue(invoke, "_descriptor()");
        return invoke;
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    public Caller<?> getCaller() {
        return getGetter().getCaller();
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    public Caller<?> getDefaultCaller() {
        return getGetter().getDefaultCaller();
    }

    public boolean equals(Object obj) {
        KPropertyImpl<?> asKPropertyImpl = UtilKt.asKPropertyImpl(obj);
        return asKPropertyImpl != null && Intrinsics.areEqual(getContainer(), asKPropertyImpl.getContainer()) && Intrinsics.areEqual(getName(), asKPropertyImpl.getName()) && Intrinsics.areEqual(this.signature, asKPropertyImpl.signature) && Intrinsics.areEqual(this.rawBoundReceiver, asKPropertyImpl.rawBoundReceiver);
    }

    public int hashCode() {
        return (((getContainer().hashCode() * 31) + getName().hashCode()) * 31) + this.signature.hashCode();
    }

    public String toString() {
        return ReflectionObjectRenderer.INSTANCE.renderProperty(getDescriptor());
    }

    /* compiled from: KPropertyImpl.kt */
    /* loaded from: classes4.dex */
    public static abstract class Accessor<PropertyType, ReturnType> extends KCallableImpl<ReturnType> implements KFunction<ReturnType>, KProperty.Accessor<PropertyType> {
        @Override // kotlin.reflect.jvm.internal.KCallableImpl
        public Caller<?> getDefaultCaller() {
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.KCallableImpl
        public abstract PropertyAccessorDescriptor getDescriptor();

        public abstract KPropertyImpl<PropertyType> getProperty();

        @Override // kotlin.reflect.jvm.internal.KCallableImpl
        public KDeclarationContainerImpl getContainer() {
            return getProperty().getContainer();
        }

        @Override // kotlin.reflect.jvm.internal.KCallableImpl
        public boolean isBound() {
            return getProperty().isBound();
        }

        @Override // kotlin.reflect.KCallable
        public boolean isSuspend() {
            return getDescriptor().isSuspend();
        }
    }

    /* compiled from: KPropertyImpl.kt */
    /* loaded from: classes4.dex */
    public static abstract class Getter<V> extends Accessor<V, V> implements KProperty.Getter<V> {
        static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(Getter.class), "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/PropertyGetterDescriptor;"))};
        private final Lazy caller$delegate;
        private final ReflectProperties.LazySoftVal descriptor$delegate = ReflectProperties.lazySoft(new Function0<PropertyGetterDescriptor>(this) { // from class: kotlin.reflect.jvm.internal.KPropertyImpl$Getter$descriptor$2
            final /* synthetic */ KPropertyImpl.Getter<V> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final PropertyGetterDescriptor invoke() {
                PropertyGetterDescriptor getter = this.this$0.getProperty().getDescriptor().getGetter();
                return getter == null ? DescriptorFactory.createDefaultGetter(this.this$0.getProperty().getDescriptor(), Annotations.Companion.getEMPTY()) : getter;
            }
        });

        public Getter() {
            Lazy lazy;
            lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0<Caller<?>>(this) { // from class: kotlin.reflect.jvm.internal.KPropertyImpl$Getter$caller$2
                final /* synthetic */ KPropertyImpl.Getter<V> this$0;

                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(0);
                    this.this$0 = this;
                }

                @Override // kotlin.jvm.functions.Function0
                public final Caller<?> invoke() {
                    return KPropertyImplKt.access$computeCallerForAccessor(this.this$0, true);
                }
            });
            this.caller$delegate = lazy;
        }

        @Override // kotlin.reflect.KCallable
        public String getName() {
            return "<get-" + getProperty().getName() + '>';
        }

        @Override // kotlin.reflect.jvm.internal.KPropertyImpl.Accessor, kotlin.reflect.jvm.internal.KCallableImpl
        public PropertyGetterDescriptor getDescriptor() {
            T value = this.descriptor$delegate.getValue(this, $$delegatedProperties[0]);
            Intrinsics.checkNotNullExpressionValue(value, "<get-descriptor>(...)");
            return (PropertyGetterDescriptor) value;
        }

        @Override // kotlin.reflect.jvm.internal.KCallableImpl
        public Caller<?> getCaller() {
            return (Caller) this.caller$delegate.getValue();
        }

        public String toString() {
            return "getter of " + getProperty();
        }

        public boolean equals(Object obj) {
            return (obj instanceof Getter) && Intrinsics.areEqual(getProperty(), ((Getter) obj).getProperty());
        }

        public int hashCode() {
            return getProperty().hashCode();
        }
    }

    /* compiled from: KPropertyImpl.kt */
    /* loaded from: classes4.dex */
    public static abstract class Setter<V> extends Accessor<V, Unit> implements KMutableProperty.Setter<V> {
        static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(Setter.class), "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/PropertySetterDescriptor;"))};
        private final Lazy caller$delegate;
        private final ReflectProperties.LazySoftVal descriptor$delegate = ReflectProperties.lazySoft(new Function0<PropertySetterDescriptor>(this) { // from class: kotlin.reflect.jvm.internal.KPropertyImpl$Setter$descriptor$2
            final /* synthetic */ KPropertyImpl.Setter<V> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final PropertySetterDescriptor invoke() {
                PropertySetterDescriptor setter = this.this$0.getProperty().getDescriptor().getSetter();
                if (setter == null) {
                    PropertyDescriptor descriptor = this.this$0.getProperty().getDescriptor();
                    Annotations.Companion companion = Annotations.Companion;
                    return DescriptorFactory.createDefaultSetter(descriptor, companion.getEMPTY(), companion.getEMPTY());
                }
                return setter;
            }
        });

        public Setter() {
            Lazy lazy;
            lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0<Caller<?>>(this) { // from class: kotlin.reflect.jvm.internal.KPropertyImpl$Setter$caller$2
                final /* synthetic */ KPropertyImpl.Setter<V> this$0;

                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                    this.this$0 = this;
                }

                @Override // kotlin.jvm.functions.Function0
                public final Caller<?> invoke() {
                    return KPropertyImplKt.access$computeCallerForAccessor(this.this$0, false);
                }
            });
            this.caller$delegate = lazy;
        }

        @Override // kotlin.reflect.KCallable
        public String getName() {
            return "<set-" + getProperty().getName() + '>';
        }

        @Override // kotlin.reflect.jvm.internal.KPropertyImpl.Accessor, kotlin.reflect.jvm.internal.KCallableImpl
        public PropertySetterDescriptor getDescriptor() {
            T value = this.descriptor$delegate.getValue(this, $$delegatedProperties[0]);
            Intrinsics.checkNotNullExpressionValue(value, "<get-descriptor>(...)");
            return (PropertySetterDescriptor) value;
        }

        @Override // kotlin.reflect.jvm.internal.KCallableImpl
        public Caller<?> getCaller() {
            return (Caller) this.caller$delegate.getValue();
        }

        public String toString() {
            return "setter of " + getProperty();
        }

        public boolean equals(Object obj) {
            return (obj instanceof Setter) && Intrinsics.areEqual(getProperty(), ((Setter) obj).getProperty());
        }

        public int hashCode() {
            return getProperty().hashCode();
        }
    }

    /* compiled from: KPropertyImpl.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    static {
        new Companion(null);
        EXTENSION_PROPERTY_DELEGATE = new Object();
    }
}
