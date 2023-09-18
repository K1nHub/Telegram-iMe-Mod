package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2908s;
import p033j$.util.concurrent.C2863a;
import p033j$.util.function.BiFunction;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2871b;
import p033j$.util.function.InterfaceC2882m;
import p033j$.util.function.InterfaceC2887r;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.H1 */
/* loaded from: classes2.dex */
public final class C2956H1 extends C2992N1 {

    /* renamed from: k */
    public static final /* synthetic */ int f838k = 0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2956H1(AbstractC3206y2 abstractC3206y2, InterfaceC2908s interfaceC2908s, int i) {
        super(abstractC3206y2, interfaceC2908s, new InterfaceC2887r() { // from class: j$.util.stream.G1
            @Override // p033j$.util.function.InterfaceC2887r
            public final Object apply(long j) {
                return AbstractC3200x2.m323j(j);
            }
        }, new InterfaceC2871b() { // from class: j$.util.stream.F1
            @Override // p033j$.util.function.BiFunction
            public BiFunction andThen(Function function) {
                Objects.requireNonNull(function);
                return new C2863a(this, function);
            }

            @Override // p033j$.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return new C2998O1((InterfaceC3181u1) obj, (InterfaceC3181u1) obj2);
            }
        });
        if (i == 1) {
            super(abstractC3206y2, interfaceC2908s, new InterfaceC2887r() { // from class: j$.util.stream.J1
                @Override // p033j$.util.function.InterfaceC2887r
                public final Object apply(long j) {
                    return AbstractC3200x2.m317p(j);
                }
            }, new InterfaceC2871b() { // from class: j$.util.stream.I1
                @Override // p033j$.util.function.BiFunction
                public BiFunction andThen(Function function) {
                    Objects.requireNonNull(function);
                    return new C2863a(this, function);
                }

                @Override // p033j$.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return new C3004P1((InterfaceC3193w1) obj, (InterfaceC3193w1) obj2);
                }
            });
        } else if (i != 2) {
        } else {
            super(abstractC3206y2, interfaceC2908s, new InterfaceC2887r() { // from class: j$.util.stream.L1
                @Override // p033j$.util.function.InterfaceC2887r
                public final Object apply(long j) {
                    return AbstractC3200x2.m316q(j);
                }
            }, new InterfaceC2871b() { // from class: j$.util.stream.K1
                @Override // p033j$.util.function.BiFunction
                public BiFunction andThen(Function function) {
                    Objects.requireNonNull(function);
                    return new C2863a(this, function);
                }

                @Override // p033j$.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return new C3010Q1((InterfaceC3205y1) obj, (InterfaceC3205y1) obj2);
                }
            });
        }
    }

    public C2956H1(AbstractC3206y2 abstractC3206y2, InterfaceC2882m interfaceC2882m, InterfaceC2908s interfaceC2908s) {
        super(abstractC3206y2, interfaceC2908s, new C3065b(interfaceC2882m), new InterfaceC2871b() { // from class: j$.util.stream.M1
            @Override // p033j$.util.function.BiFunction
            public BiFunction andThen(Function function) {
                Objects.requireNonNull(function);
                return new C2863a(this, function);
            }

            @Override // p033j$.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return new C3020S1((InterfaceC2914A1) obj, (InterfaceC2914A1) obj2);
            }
        });
    }
}
