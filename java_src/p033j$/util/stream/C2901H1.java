package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2853s;
import p033j$.util.concurrent.C2808a;
import p033j$.util.function.BiFunction;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2816b;
import p033j$.util.function.InterfaceC2827m;
import p033j$.util.function.InterfaceC2832r;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.H1 */
/* loaded from: classes2.dex */
public final class C2901H1 extends C2937N1 {

    /* renamed from: k */
    public static final /* synthetic */ int f837k = 0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2901H1(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s, int i) {
        super(abstractC3151y2, interfaceC2853s, new InterfaceC2832r() { // from class: j$.util.stream.G1
            @Override // p033j$.util.function.InterfaceC2832r
            public final Object apply(long j) {
                return AbstractC3145x2.m323j(j);
            }
        }, new InterfaceC2816b() { // from class: j$.util.stream.F1
            @Override // p033j$.util.function.BiFunction
            public BiFunction andThen(Function function) {
                Objects.requireNonNull(function);
                return new C2808a(this, function);
            }

            @Override // p033j$.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return new C2943O1((InterfaceC3126u1) obj, (InterfaceC3126u1) obj2);
            }
        });
        if (i == 1) {
            super(abstractC3151y2, interfaceC2853s, new InterfaceC2832r() { // from class: j$.util.stream.J1
                @Override // p033j$.util.function.InterfaceC2832r
                public final Object apply(long j) {
                    return AbstractC3145x2.m317p(j);
                }
            }, new InterfaceC2816b() { // from class: j$.util.stream.I1
                @Override // p033j$.util.function.BiFunction
                public BiFunction andThen(Function function) {
                    Objects.requireNonNull(function);
                    return new C2808a(this, function);
                }

                @Override // p033j$.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return new C2949P1((InterfaceC3138w1) obj, (InterfaceC3138w1) obj2);
                }
            });
        } else if (i != 2) {
        } else {
            super(abstractC3151y2, interfaceC2853s, new InterfaceC2832r() { // from class: j$.util.stream.L1
                @Override // p033j$.util.function.InterfaceC2832r
                public final Object apply(long j) {
                    return AbstractC3145x2.m316q(j);
                }
            }, new InterfaceC2816b() { // from class: j$.util.stream.K1
                @Override // p033j$.util.function.BiFunction
                public BiFunction andThen(Function function) {
                    Objects.requireNonNull(function);
                    return new C2808a(this, function);
                }

                @Override // p033j$.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return new C2955Q1((InterfaceC3150y1) obj, (InterfaceC3150y1) obj2);
                }
            });
        }
    }

    public C2901H1(AbstractC3151y2 abstractC3151y2, InterfaceC2827m interfaceC2827m, InterfaceC2853s interfaceC2853s) {
        super(abstractC3151y2, interfaceC2853s, new C3010b(interfaceC2827m), new InterfaceC2816b() { // from class: j$.util.stream.M1
            @Override // p033j$.util.function.BiFunction
            public BiFunction andThen(Function function) {
                Objects.requireNonNull(function);
                return new C2808a(this, function);
            }

            @Override // p033j$.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return new C2965S1((InterfaceC2859A1) obj, (InterfaceC2859A1) obj2);
            }
        });
    }
}
