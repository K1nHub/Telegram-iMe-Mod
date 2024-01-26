package kotlin.reflect.jvm.internal.calls;

import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.calls.Caller;
import kotlin.reflect.jvm.internal.calls.CallerImpl;
/* compiled from: InternalUnderlyingValOfInlineClass.kt */
/* loaded from: classes4.dex */
public abstract class InternalUnderlyingValOfInlineClass implements Caller<Method> {
    private final List<Type> parameterTypes;
    private final Type returnType;
    private final Method unboxMethod;

    public /* synthetic */ InternalUnderlyingValOfInlineClass(Method method, List list, DefaultConstructorMarker defaultConstructorMarker) {
        this(method, list);
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    /* renamed from: getMember  reason: avoid collision after fix types in other method */
    public final Method mo2046getMember() {
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private InternalUnderlyingValOfInlineClass(Method method, List<? extends Type> list) {
        this.unboxMethod = method;
        this.parameterTypes = list;
        Class<?> returnType = method.getReturnType();
        Intrinsics.checkNotNullExpressionValue(returnType, "unboxMethod.returnType");
        this.returnType = returnType;
    }

    public void checkArguments(Object[] objArr) {
        Caller.DefaultImpls.checkArguments(this, objArr);
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    public final List<Type> getParameterTypes() {
        return this.parameterTypes;
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    public final Type getReturnType() {
        return this.returnType;
    }

    protected final Object callMethod(Object obj, Object[] args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return this.unboxMethod.invoke(obj, Arrays.copyOf(args, args.length));
    }

    /* compiled from: InternalUnderlyingValOfInlineClass.kt */
    /* loaded from: classes4.dex */
    public static final class Unbound extends InternalUnderlyingValOfInlineClass {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public Unbound(java.lang.reflect.Method r3) {
            /*
                r2 = this;
                java.lang.String r0 = "unboxMethod"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
                java.lang.Class r0 = r3.getDeclaringClass()
                java.util.List r0 = kotlin.collections.CollectionsKt.listOf(r0)
                r1 = 0
                r2.<init>(r3, r0, r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.calls.InternalUnderlyingValOfInlineClass.Unbound.<init>(java.lang.reflect.Method):void");
        }

        @Override // kotlin.reflect.jvm.internal.calls.Caller
        public Object call(Object[] args) {
            Intrinsics.checkNotNullParameter(args, "args");
            checkArguments(args);
            Object obj = args[0];
            CallerImpl.Companion companion = CallerImpl.Companion;
            return callMethod(obj, args.length <= 1 ? new Object[0] : ArraysKt.copyOfRange(args, 1, args.length));
        }
    }

    /* compiled from: InternalUnderlyingValOfInlineClass.kt */
    /* loaded from: classes4.dex */
    public static final class Bound extends InternalUnderlyingValOfInlineClass implements BoundCaller {
        private final Object boundReceiver;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public Bound(java.lang.reflect.Method r3, java.lang.Object r4) {
            /*
                r2 = this;
                java.lang.String r0 = "unboxMethod"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
                java.util.List r0 = kotlin.collections.CollectionsKt.emptyList()
                r1 = 0
                r2.<init>(r3, r0, r1)
                r2.boundReceiver = r4
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.calls.InternalUnderlyingValOfInlineClass.Bound.<init>(java.lang.reflect.Method, java.lang.Object):void");
        }

        @Override // kotlin.reflect.jvm.internal.calls.Caller
        public Object call(Object[] args) {
            Intrinsics.checkNotNullParameter(args, "args");
            checkArguments(args);
            return callMethod(this.boundReceiver, args);
        }
    }
}
