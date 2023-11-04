package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.concurrent.C2808a;
import p033j$.util.function.BiFunction;
import p033j$.util.function.Function;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2816b;
import p033j$.util.function.InterfaceC2831q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.H1 */
/* loaded from: classes2.dex */
public final class C2897H1 extends C2933N1 {

    /* renamed from: k */
    public static final /* synthetic */ int f887k = 0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2897H1(AbstractC3147y2 abstractC3147y2, Spliterator spliterator, int i) {
        super(abstractC3147y2, spliterator, new InterfaceC2831q() { // from class: j$.util.stream.G1
            @Override // p033j$.util.function.InterfaceC2831q
            public final Object apply(long j) {
                return AbstractC3141x2.m369j(j);
            }
        }, new InterfaceC2816b() { // from class: j$.util.stream.F1
            @Override // p033j$.util.function.BiFunction
            public BiFunction andThen(Function function) {
                Objects.requireNonNull(function);
                return new C2808a(this, function);
            }

            @Override // p033j$.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return new C2939O1((InterfaceC3122u1) obj, (InterfaceC3122u1) obj2);
            }
        });
        if (i == 1) {
            super(abstractC3147y2, spliterator, new InterfaceC2831q() { // from class: j$.util.stream.J1
                @Override // p033j$.util.function.InterfaceC2831q
                public final Object apply(long j) {
                    return AbstractC3141x2.m363p(j);
                }
            }, new InterfaceC2816b() { // from class: j$.util.stream.I1
                @Override // p033j$.util.function.BiFunction
                public BiFunction andThen(Function function) {
                    Objects.requireNonNull(function);
                    return new C2808a(this, function);
                }

                @Override // p033j$.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return new C2945P1((InterfaceC3134w1) obj, (InterfaceC3134w1) obj2);
                }
            });
        } else if (i != 2) {
        } else {
            super(abstractC3147y2, spliterator, new InterfaceC2831q() { // from class: j$.util.stream.L1
                @Override // p033j$.util.function.InterfaceC2831q
                public final Object apply(long j) {
                    return AbstractC3141x2.m362q(j);
                }
            }, new InterfaceC2816b() { // from class: j$.util.stream.K1
                @Override // p033j$.util.function.BiFunction
                public BiFunction andThen(Function function) {
                    Objects.requireNonNull(function);
                    return new C2808a(this, function);
                }

                @Override // p033j$.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return new C2951Q1((InterfaceC3146y1) obj, (InterfaceC3146y1) obj2);
                }
            });
        }
    }

    public C2897H1(AbstractC3147y2 abstractC3147y2, IntFunction intFunction, Spliterator spliterator) {
        super(abstractC3147y2, spliterator, new C3006b(intFunction), new InterfaceC2816b() { // from class: j$.util.stream.M1
            @Override // p033j$.util.function.BiFunction
            public BiFunction andThen(Function function) {
                Objects.requireNonNull(function);
                return new C2808a(this, function);
            }

            @Override // p033j$.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return new C2961S1((InterfaceC2855A1) obj, (InterfaceC2855A1) obj2);
            }
        });
    }
}
