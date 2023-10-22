package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.concurrent.C2804a;
import p033j$.util.function.BiFunction;
import p033j$.util.function.Function;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2812b;
import p033j$.util.function.InterfaceC2827q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.H1 */
/* loaded from: classes2.dex */
public final class C2893H1 extends C2929N1 {

    /* renamed from: k */
    public static final /* synthetic */ int f887k = 0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2893H1(AbstractC3143y2 abstractC3143y2, Spliterator spliterator, int i) {
        super(abstractC3143y2, spliterator, new InterfaceC2827q() { // from class: j$.util.stream.G1
            @Override // p033j$.util.function.InterfaceC2827q
            public final Object apply(long j) {
                return AbstractC3137x2.m368j(j);
            }
        }, new InterfaceC2812b() { // from class: j$.util.stream.F1
            @Override // p033j$.util.function.BiFunction
            public BiFunction andThen(Function function) {
                Objects.requireNonNull(function);
                return new C2804a(this, function);
            }

            @Override // p033j$.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return new C2935O1((InterfaceC3118u1) obj, (InterfaceC3118u1) obj2);
            }
        });
        if (i == 1) {
            super(abstractC3143y2, spliterator, new InterfaceC2827q() { // from class: j$.util.stream.J1
                @Override // p033j$.util.function.InterfaceC2827q
                public final Object apply(long j) {
                    return AbstractC3137x2.m362p(j);
                }
            }, new InterfaceC2812b() { // from class: j$.util.stream.I1
                @Override // p033j$.util.function.BiFunction
                public BiFunction andThen(Function function) {
                    Objects.requireNonNull(function);
                    return new C2804a(this, function);
                }

                @Override // p033j$.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return new C2941P1((InterfaceC3130w1) obj, (InterfaceC3130w1) obj2);
                }
            });
        } else if (i != 2) {
        } else {
            super(abstractC3143y2, spliterator, new InterfaceC2827q() { // from class: j$.util.stream.L1
                @Override // p033j$.util.function.InterfaceC2827q
                public final Object apply(long j) {
                    return AbstractC3137x2.m361q(j);
                }
            }, new InterfaceC2812b() { // from class: j$.util.stream.K1
                @Override // p033j$.util.function.BiFunction
                public BiFunction andThen(Function function) {
                    Objects.requireNonNull(function);
                    return new C2804a(this, function);
                }

                @Override // p033j$.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return new C2947Q1((InterfaceC3142y1) obj, (InterfaceC3142y1) obj2);
                }
            });
        }
    }

    public C2893H1(AbstractC3143y2 abstractC3143y2, IntFunction intFunction, Spliterator spliterator) {
        super(abstractC3143y2, spliterator, new C3002b(intFunction), new InterfaceC2812b() { // from class: j$.util.stream.M1
            @Override // p033j$.util.function.BiFunction
            public BiFunction andThen(Function function) {
                Objects.requireNonNull(function);
                return new C2804a(this, function);
            }

            @Override // p033j$.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return new C2957S1((InterfaceC2851A1) obj, (InterfaceC2851A1) obj2);
            }
        });
    }
}
