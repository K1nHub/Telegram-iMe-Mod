package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.concurrent.C2803a;
import p033j$.util.function.BiFunction;
import p033j$.util.function.Function;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2811b;
import p033j$.util.function.InterfaceC2826q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.H1 */
/* loaded from: classes2.dex */
public final class C2892H1 extends C2928N1 {

    /* renamed from: k */
    public static final /* synthetic */ int f887k = 0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2892H1(AbstractC3142y2 abstractC3142y2, Spliterator spliterator, int i) {
        super(abstractC3142y2, spliterator, new InterfaceC2826q() { // from class: j$.util.stream.G1
            @Override // p033j$.util.function.InterfaceC2826q
            public final Object apply(long j) {
                return AbstractC3136x2.m372j(j);
            }
        }, new InterfaceC2811b() { // from class: j$.util.stream.F1
            @Override // p033j$.util.function.BiFunction
            public BiFunction andThen(Function function) {
                Objects.requireNonNull(function);
                return new C2803a(this, function);
            }

            @Override // p033j$.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return new C2934O1((InterfaceC3117u1) obj, (InterfaceC3117u1) obj2);
            }
        });
        if (i == 1) {
            super(abstractC3142y2, spliterator, new InterfaceC2826q() { // from class: j$.util.stream.J1
                @Override // p033j$.util.function.InterfaceC2826q
                public final Object apply(long j) {
                    return AbstractC3136x2.m366p(j);
                }
            }, new InterfaceC2811b() { // from class: j$.util.stream.I1
                @Override // p033j$.util.function.BiFunction
                public BiFunction andThen(Function function) {
                    Objects.requireNonNull(function);
                    return new C2803a(this, function);
                }

                @Override // p033j$.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return new C2940P1((InterfaceC3129w1) obj, (InterfaceC3129w1) obj2);
                }
            });
        } else if (i != 2) {
        } else {
            super(abstractC3142y2, spliterator, new InterfaceC2826q() { // from class: j$.util.stream.L1
                @Override // p033j$.util.function.InterfaceC2826q
                public final Object apply(long j) {
                    return AbstractC3136x2.m365q(j);
                }
            }, new InterfaceC2811b() { // from class: j$.util.stream.K1
                @Override // p033j$.util.function.BiFunction
                public BiFunction andThen(Function function) {
                    Objects.requireNonNull(function);
                    return new C2803a(this, function);
                }

                @Override // p033j$.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return new C2946Q1((InterfaceC3141y1) obj, (InterfaceC3141y1) obj2);
                }
            });
        }
    }

    public C2892H1(AbstractC3142y2 abstractC3142y2, IntFunction intFunction, Spliterator spliterator) {
        super(abstractC3142y2, spliterator, new C3001b(intFunction), new InterfaceC2811b() { // from class: j$.util.stream.M1
            @Override // p033j$.util.function.BiFunction
            public BiFunction andThen(Function function) {
                Objects.requireNonNull(function);
                return new C2803a(this, function);
            }

            @Override // p033j$.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return new C2956S1((InterfaceC2850A1) obj, (InterfaceC2850A1) obj2);
            }
        });
    }
}
