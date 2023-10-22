package kotlin.reflect.jvm.internal.impl.util;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.util.Check;
/* compiled from: modifierChecks.kt */
/* loaded from: classes4.dex */
public abstract class ValueParameterCountCheck implements Check {
    private final String description;

    public /* synthetic */ ValueParameterCountCheck(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    /* compiled from: modifierChecks.kt */
    /* loaded from: classes4.dex */
    public static final class NoValueParameters extends ValueParameterCountCheck {
        public static final NoValueParameters INSTANCE = new NoValueParameters();

        private NoValueParameters() {
            super("must have no value parameters", null);
        }

        @Override // kotlin.reflect.jvm.internal.impl.util.Check
        public boolean check(FunctionDescriptor functionDescriptor) {
            Intrinsics.checkNotNullParameter(functionDescriptor, "functionDescriptor");
            return functionDescriptor.getValueParameters().isEmpty();
        }
    }

    private ValueParameterCountCheck(String str) {
        this.description = str;
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.Check
    public String getDescription() {
        return this.description;
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.Check
    public String invoke(FunctionDescriptor functionDescriptor) {
        return Check.DefaultImpls.invoke(this, functionDescriptor);
    }

    /* compiled from: modifierChecks.kt */
    /* loaded from: classes4.dex */
    public static final class SingleValueParameter extends ValueParameterCountCheck {
        public static final SingleValueParameter INSTANCE = new SingleValueParameter();

        private SingleValueParameter() {
            super("must have a single value parameter", null);
        }

        @Override // kotlin.reflect.jvm.internal.impl.util.Check
        public boolean check(FunctionDescriptor functionDescriptor) {
            Intrinsics.checkNotNullParameter(functionDescriptor, "functionDescriptor");
            return functionDescriptor.getValueParameters().size() == 1;
        }
    }

    /* compiled from: modifierChecks.kt */
    /* loaded from: classes4.dex */
    public static final class AtLeast extends ValueParameterCountCheck {

        /* renamed from: n */
        private final int f1393n;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public AtLeast(int r3) {
            /*
                r2 = this;
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r1 = "must have at least "
                r0.append(r1)
                r0.append(r3)
                java.lang.String r1 = " value parameter"
                r0.append(r1)
                r1 = 1
                if (r3 <= r1) goto L1a
                java.lang.String r1 = "s"
                goto L1c
            L1a:
                java.lang.String r1 = ""
            L1c:
                r0.append(r1)
                java.lang.String r0 = r0.toString()
                r1 = 0
                r2.<init>(r0, r1)
                r2.f1393n = r3
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.util.ValueParameterCountCheck.AtLeast.<init>(int):void");
        }

        @Override // kotlin.reflect.jvm.internal.impl.util.Check
        public boolean check(FunctionDescriptor functionDescriptor) {
            Intrinsics.checkNotNullParameter(functionDescriptor, "functionDescriptor");
            return functionDescriptor.getValueParameters().size() >= this.f1393n;
        }
    }

    /* compiled from: modifierChecks.kt */
    /* loaded from: classes4.dex */
    public static final class Equals extends ValueParameterCountCheck {

        /* renamed from: n */
        private final int f1394n;

        public Equals(int i) {
            super("must have exactly " + i + " value parameters", null);
            this.f1394n = i;
        }

        @Override // kotlin.reflect.jvm.internal.impl.util.Check
        public boolean check(FunctionDescriptor functionDescriptor) {
            Intrinsics.checkNotNullParameter(functionDescriptor, "functionDescriptor");
            return functionDescriptor.getValueParameters().size() == this.f1394n;
        }
    }
}
