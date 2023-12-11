package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.concurrent.C2805a;
import p033j$.util.function.BiFunction;
import p033j$.util.function.Function;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2813b;
import p033j$.util.function.InterfaceC2828q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.H1 */
/* loaded from: classes2.dex */
public final class C2894H1 extends C2930N1 {

    /* renamed from: k */
    public static final /* synthetic */ int f887k = 0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2894H1(AbstractC3144y2 abstractC3144y2, Spliterator spliterator, int i) {
        super(abstractC3144y2, spliterator, new InterfaceC2828q() { // from class: j$.util.stream.G1
            @Override // p033j$.util.function.InterfaceC2828q
            public final Object apply(long j) {
                return AbstractC3138x2.m369j(j);
            }
        }, new InterfaceC2813b() { // from class: j$.util.stream.F1
            @Override // p033j$.util.function.BiFunction
            public BiFunction andThen(Function function) {
                Objects.requireNonNull(function);
                return new C2805a(this, function);
            }

            @Override // p033j$.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return new C2936O1((InterfaceC3119u1) obj, (InterfaceC3119u1) obj2);
            }
        });
        if (i == 1) {
            super(abstractC3144y2, spliterator, new InterfaceC2828q() { // from class: j$.util.stream.J1
                @Override // p033j$.util.function.InterfaceC2828q
                public final Object apply(long j) {
                    return AbstractC3138x2.m363p(j);
                }
            }, new InterfaceC2813b() { // from class: j$.util.stream.I1
                @Override // p033j$.util.function.BiFunction
                public BiFunction andThen(Function function) {
                    Objects.requireNonNull(function);
                    return new C2805a(this, function);
                }

                @Override // p033j$.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return new C2942P1((InterfaceC3131w1) obj, (InterfaceC3131w1) obj2);
                }
            });
        } else if (i != 2) {
        } else {
            super(abstractC3144y2, spliterator, new InterfaceC2828q() { // from class: j$.util.stream.L1
                @Override // p033j$.util.function.InterfaceC2828q
                public final Object apply(long j) {
                    return AbstractC3138x2.m362q(j);
                }
            }, new InterfaceC2813b() { // from class: j$.util.stream.K1
                @Override // p033j$.util.function.BiFunction
                public BiFunction andThen(Function function) {
                    Objects.requireNonNull(function);
                    return new C2805a(this, function);
                }

                @Override // p033j$.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return new C2948Q1((InterfaceC3143y1) obj, (InterfaceC3143y1) obj2);
                }
            });
        }
    }

    public C2894H1(AbstractC3144y2 abstractC3144y2, IntFunction intFunction, Spliterator spliterator) {
        super(abstractC3144y2, spliterator, new C3003b(intFunction), new InterfaceC2813b() { // from class: j$.util.stream.M1
            @Override // p033j$.util.function.BiFunction
            public BiFunction andThen(Function function) {
                Objects.requireNonNull(function);
                return new C2805a(this, function);
            }

            @Override // p033j$.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return new C2958S1((InterfaceC2852A1) obj, (InterfaceC2852A1) obj2);
            }
        });
    }
}
