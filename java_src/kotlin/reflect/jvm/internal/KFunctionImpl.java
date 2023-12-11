package kotlin.reflect.jvm.internal;

import java.lang.reflect.Constructor;
import java.lang.reflect.Executable;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.CallableReference;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionBase;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KFunction;
import kotlin.reflect.KParameter;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.FunctionWithAllInvokes;
import kotlin.reflect.jvm.internal.JvmFunctionSignature;
import kotlin.reflect.jvm.internal.ReflectProperties;
import kotlin.reflect.jvm.internal.calls.AnnotationConstructorCaller;
import kotlin.reflect.jvm.internal.calls.Caller;
import kotlin.reflect.jvm.internal.calls.CallerImpl;
import kotlin.reflect.jvm.internal.calls.CallerKt;
import kotlin.reflect.jvm.internal.calls.InlineClassAwareCallerKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.InlineClassManglingRulesKt;
/* compiled from: KFunctionImpl.kt */
/* loaded from: classes4.dex */
public final class KFunctionImpl extends KCallableImpl<Object> implements FunctionBase<Object>, KFunction<Object>, FunctionWithAllInvokes {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(KFunctionImpl.class), "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/FunctionDescriptor;"))};
    private final Lazy caller$delegate;
    private final KDeclarationContainerImpl container;
    private final Lazy defaultCaller$delegate;
    private final ReflectProperties.LazySoftVal descriptor$delegate;
    private final Object rawBoundReceiver;
    private final String signature;

    @Override // kotlin.jvm.functions.Function0
    public Object invoke() {
        return FunctionWithAllInvokes.DefaultImpls.invoke(this);
    }

    @Override // kotlin.jvm.functions.Function1
    public Object invoke(Object obj) {
        return FunctionWithAllInvokes.DefaultImpls.invoke(this, obj);
    }

    @Override // kotlin.jvm.functions.Function2
    public Object invoke(Object obj, Object obj2) {
        return FunctionWithAllInvokes.DefaultImpls.invoke(this, obj, obj2);
    }

    @Override // kotlin.jvm.functions.Function3
    public Object invoke(Object obj, Object obj2, Object obj3) {
        return FunctionWithAllInvokes.DefaultImpls.invoke(this, obj, obj2, obj3);
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    public KDeclarationContainerImpl getContainer() {
        return this.container;
    }

    /* synthetic */ KFunctionImpl(KDeclarationContainerImpl kDeclarationContainerImpl, String str, String str2, FunctionDescriptor functionDescriptor, Object obj, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(kDeclarationContainerImpl, str, str2, functionDescriptor, (i & 16) != 0 ? CallableReference.NO_RECEIVER : obj);
    }

    private KFunctionImpl(KDeclarationContainerImpl kDeclarationContainerImpl, final String str, String str2, FunctionDescriptor functionDescriptor, Object obj) {
        Lazy lazy;
        Lazy lazy2;
        this.container = kDeclarationContainerImpl;
        this.signature = str2;
        this.rawBoundReceiver = obj;
        this.descriptor$delegate = ReflectProperties.lazySoft(functionDescriptor, new Function0<FunctionDescriptor>() { // from class: kotlin.reflect.jvm.internal.KFunctionImpl$descriptor$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final FunctionDescriptor invoke() {
                String str3;
                KDeclarationContainerImpl container = KFunctionImpl.this.getContainer();
                String str4 = str;
                str3 = KFunctionImpl.this.signature;
                return container.findFunctionDescriptor(str4, str3);
            }
        });
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new Function0<Caller<? extends Executable>>() { // from class: kotlin.reflect.jvm.internal.KFunctionImpl$caller$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Caller<? extends Executable> invoke() {
                int collectionSizeOrDefault;
                Object constructor;
                Caller createInstanceMethodCaller;
                int collectionSizeOrDefault2;
                JvmFunctionSignature mapSignature = RuntimeTypeMapper.INSTANCE.mapSignature(KFunctionImpl.this.getDescriptor());
                if (mapSignature instanceof JvmFunctionSignature.KotlinConstructor) {
                    if (KFunctionImpl.this.isAnnotationConstructor()) {
                        Class<?> jClass = KFunctionImpl.this.getContainer().getJClass();
                        List<KParameter> parameters = KFunctionImpl.this.getParameters();
                        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(parameters, 10);
                        ArrayList arrayList = new ArrayList(collectionSizeOrDefault2);
                        for (KParameter kParameter : parameters) {
                            String name = kParameter.getName();
                            Intrinsics.checkNotNull(name);
                            arrayList.add(name);
                        }
                        return new AnnotationConstructorCaller(jClass, arrayList, AnnotationConstructorCaller.CallMode.POSITIONAL_CALL, AnnotationConstructorCaller.Origin.KOTLIN, null, 16, null);
                    }
                    constructor = KFunctionImpl.this.getContainer().findConstructorBySignature(((JvmFunctionSignature.KotlinConstructor) mapSignature).getConstructorDesc());
                } else if (mapSignature instanceof JvmFunctionSignature.KotlinFunction) {
                    JvmFunctionSignature.KotlinFunction kotlinFunction = (JvmFunctionSignature.KotlinFunction) mapSignature;
                    constructor = KFunctionImpl.this.getContainer().findMethodBySignature(kotlinFunction.getMethodName(), kotlinFunction.getMethodDesc());
                } else if (mapSignature instanceof JvmFunctionSignature.JavaMethod) {
                    constructor = ((JvmFunctionSignature.JavaMethod) mapSignature).getMethod();
                } else if (!(mapSignature instanceof JvmFunctionSignature.JavaConstructor)) {
                    if (mapSignature instanceof JvmFunctionSignature.FakeJavaAnnotationConstructor) {
                        List<Method> methods = ((JvmFunctionSignature.FakeJavaAnnotationConstructor) mapSignature).getMethods();
                        Class<?> jClass2 = KFunctionImpl.this.getContainer().getJClass();
                        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(methods, 10);
                        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
                        for (Method method : methods) {
                            arrayList2.add(method.getName());
                        }
                        return new AnnotationConstructorCaller(jClass2, arrayList2, AnnotationConstructorCaller.CallMode.POSITIONAL_CALL, AnnotationConstructorCaller.Origin.JAVA, methods);
                    }
                    throw new NoWhenBranchMatchedException();
                } else {
                    constructor = ((JvmFunctionSignature.JavaConstructor) mapSignature).getConstructor();
                }
                if (constructor instanceof Constructor) {
                    KFunctionImpl kFunctionImpl = KFunctionImpl.this;
                    createInstanceMethodCaller = kFunctionImpl.createConstructorCaller((Constructor) constructor, kFunctionImpl.getDescriptor(), false);
                } else if (!(constructor instanceof Method)) {
                    throw new KotlinReflectionInternalError("Could not compute caller for function: " + KFunctionImpl.this.getDescriptor() + " (member = " + constructor + ')');
                } else {
                    Method method2 = (Method) constructor;
                    createInstanceMethodCaller = !Modifier.isStatic(method2.getModifiers()) ? KFunctionImpl.this.createInstanceMethodCaller(method2) : KFunctionImpl.this.getDescriptor().getAnnotations().mo2048findAnnotation(UtilKt.getJVM_STATIC()) != null ? KFunctionImpl.this.createJvmStaticInObjectCaller(method2) : KFunctionImpl.this.createStaticMethodCaller(method2);
                }
                return InlineClassAwareCallerKt.createInlineClassAwareCallerIfNeeded$default(createInstanceMethodCaller, KFunctionImpl.this.getDescriptor(), false, 2, null);
            }
        });
        this.caller$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new Function0<Caller<? extends Executable>>() { // from class: kotlin.reflect.jvm.internal.KFunctionImpl$defaultCaller$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r5v4, types: [java.lang.reflect.Member, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final Caller<? extends Executable> invoke() {
                GenericDeclaration genericDeclaration;
                int collectionSizeOrDefault;
                int collectionSizeOrDefault2;
                Caller caller;
                ?? mo2045getMember;
                JvmFunctionSignature mapSignature = RuntimeTypeMapper.INSTANCE.mapSignature(KFunctionImpl.this.getDescriptor());
                if (mapSignature instanceof JvmFunctionSignature.KotlinFunction) {
                    KDeclarationContainerImpl container = KFunctionImpl.this.getContainer();
                    JvmFunctionSignature.KotlinFunction kotlinFunction = (JvmFunctionSignature.KotlinFunction) mapSignature;
                    String methodName = kotlinFunction.getMethodName();
                    String methodDesc = kotlinFunction.getMethodDesc();
                    Intrinsics.checkNotNull(KFunctionImpl.this.getCaller().mo2045getMember());
                    genericDeclaration = container.findDefaultMethod(methodName, methodDesc, !Modifier.isStatic(mo2045getMember.getModifiers()));
                } else if (mapSignature instanceof JvmFunctionSignature.KotlinConstructor) {
                    if (KFunctionImpl.this.isAnnotationConstructor()) {
                        Class<?> jClass = KFunctionImpl.this.getContainer().getJClass();
                        List<KParameter> parameters = KFunctionImpl.this.getParameters();
                        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(parameters, 10);
                        ArrayList arrayList = new ArrayList(collectionSizeOrDefault2);
                        for (KParameter kParameter : parameters) {
                            String name = kParameter.getName();
                            Intrinsics.checkNotNull(name);
                            arrayList.add(name);
                        }
                        return new AnnotationConstructorCaller(jClass, arrayList, AnnotationConstructorCaller.CallMode.CALL_BY_NAME, AnnotationConstructorCaller.Origin.KOTLIN, null, 16, null);
                    }
                    genericDeclaration = KFunctionImpl.this.getContainer().findDefaultConstructor(((JvmFunctionSignature.KotlinConstructor) mapSignature).getConstructorDesc());
                } else if (mapSignature instanceof JvmFunctionSignature.FakeJavaAnnotationConstructor) {
                    List<Method> methods = ((JvmFunctionSignature.FakeJavaAnnotationConstructor) mapSignature).getMethods();
                    Class<?> jClass2 = KFunctionImpl.this.getContainer().getJClass();
                    collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(methods, 10);
                    ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
                    for (Method method : methods) {
                        arrayList2.add(method.getName());
                    }
                    return new AnnotationConstructorCaller(jClass2, arrayList2, AnnotationConstructorCaller.CallMode.CALL_BY_NAME, AnnotationConstructorCaller.Origin.JAVA, methods);
                } else {
                    genericDeclaration = null;
                }
                if (genericDeclaration instanceof Constructor) {
                    KFunctionImpl kFunctionImpl = KFunctionImpl.this;
                    caller = kFunctionImpl.createConstructorCaller((Constructor) genericDeclaration, kFunctionImpl.getDescriptor(), true);
                } else if (genericDeclaration instanceof Method) {
                    if (KFunctionImpl.this.getDescriptor().getAnnotations().mo2048findAnnotation(UtilKt.getJVM_STATIC()) != null) {
                        DeclarationDescriptor containingDeclaration = KFunctionImpl.this.getDescriptor().getContainingDeclaration();
                        Intrinsics.checkNotNull(containingDeclaration, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                        if (!((ClassDescriptor) containingDeclaration).isCompanionObject()) {
                            caller = KFunctionImpl.this.createJvmStaticInObjectCaller((Method) genericDeclaration);
                        }
                    }
                    caller = KFunctionImpl.this.createStaticMethodCaller((Method) genericDeclaration);
                } else {
                    caller = null;
                }
                if (caller != null) {
                    return InlineClassAwareCallerKt.createInlineClassAwareCallerIfNeeded(caller, KFunctionImpl.this.getDescriptor(), true);
                }
                return null;
            }
        });
        this.defaultCaller$delegate = lazy2;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public KFunctionImpl(KDeclarationContainerImpl container, String name, String signature, Object obj) {
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
    public KFunctionImpl(kotlin.reflect.jvm.internal.KDeclarationContainerImpl r10, kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor r11) {
        /*
            r9 = this;
            java.lang.String r0 = "container"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            java.lang.String r0 = "descriptor"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r11, r0)
            kotlin.reflect.jvm.internal.impl.name.Name r0 = r11.getName()
            java.lang.String r3 = r0.asString()
            java.lang.String r0 = "descriptor.name.asString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r0)
            kotlin.reflect.jvm.internal.RuntimeTypeMapper r0 = kotlin.reflect.jvm.internal.RuntimeTypeMapper.INSTANCE
            kotlin.reflect.jvm.internal.JvmFunctionSignature r0 = r0.mapSignature(r11)
            java.lang.String r4 = r0.asString()
            r6 = 0
            r7 = 16
            r8 = 0
            r1 = r9
            r2 = r10
            r5 = r11
            r1.<init>(r2, r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.KFunctionImpl.<init>(kotlin.reflect.jvm.internal.KDeclarationContainerImpl, kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor):void");
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    public boolean isBound() {
        return !Intrinsics.areEqual(this.rawBoundReceiver, CallableReference.NO_RECEIVER);
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    public FunctionDescriptor getDescriptor() {
        T value = this.descriptor$delegate.getValue(this, $$delegatedProperties[0]);
        Intrinsics.checkNotNullExpressionValue(value, "<get-descriptor>(...)");
        return (FunctionDescriptor) value;
    }

    @Override // kotlin.reflect.KCallable
    public String getName() {
        String asString = getDescriptor().getName().asString();
        Intrinsics.checkNotNullExpressionValue(asString, "descriptor.name.asString()");
        return asString;
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    public Caller<?> getCaller() {
        return (Caller) this.caller$delegate.getValue();
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    public Caller<?> getDefaultCaller() {
        return (Caller) this.defaultCaller$delegate.getValue();
    }

    private final Object getBoundReceiver() {
        return InlineClassAwareCallerKt.coerceToExpectedReceiverType(this.rawBoundReceiver, getDescriptor());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CallerImpl.Method createStaticMethodCaller(Method method) {
        return isBound() ? new CallerImpl.Method.BoundStatic(method, getBoundReceiver()) : new CallerImpl.Method.Static(method);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CallerImpl.Method createJvmStaticInObjectCaller(Method method) {
        return isBound() ? new CallerImpl.Method.BoundJvmStaticInObject(method) : new CallerImpl.Method.JvmStaticInObject(method);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CallerImpl.Method createInstanceMethodCaller(Method method) {
        return isBound() ? new CallerImpl.Method.BoundInstance(method, getBoundReceiver()) : new CallerImpl.Method.Instance(method);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CallerImpl<Constructor<?>> createConstructorCaller(Constructor<?> constructor, FunctionDescriptor functionDescriptor, boolean z) {
        if (!z && InlineClassManglingRulesKt.shouldHideConstructorDueToInlineClassTypeValueParameters(functionDescriptor)) {
            if (isBound()) {
                return new CallerImpl.AccessorForHiddenBoundConstructor(constructor, getBoundReceiver());
            }
            return new CallerImpl.AccessorForHiddenConstructor(constructor);
        } else if (isBound()) {
            return new CallerImpl.BoundConstructor(constructor, getBoundReceiver());
        } else {
            return new CallerImpl.Constructor(constructor);
        }
    }

    @Override // kotlin.jvm.internal.FunctionBase
    public int getArity() {
        return CallerKt.getArity(getCaller());
    }

    @Override // kotlin.reflect.KCallable
    public boolean isSuspend() {
        return getDescriptor().isSuspend();
    }

    public boolean equals(Object obj) {
        KFunctionImpl asKFunctionImpl = UtilKt.asKFunctionImpl(obj);
        return asKFunctionImpl != null && Intrinsics.areEqual(getContainer(), asKFunctionImpl.getContainer()) && Intrinsics.areEqual(getName(), asKFunctionImpl.getName()) && Intrinsics.areEqual(this.signature, asKFunctionImpl.signature) && Intrinsics.areEqual(this.rawBoundReceiver, asKFunctionImpl.rawBoundReceiver);
    }

    public int hashCode() {
        return (((getContainer().hashCode() * 31) + getName().hashCode()) * 31) + this.signature.hashCode();
    }

    public String toString() {
        return ReflectionObjectRenderer.INSTANCE.renderFunction(getDescriptor());
    }
}
