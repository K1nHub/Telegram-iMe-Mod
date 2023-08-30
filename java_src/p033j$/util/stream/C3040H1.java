package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2992s;
import p033j$.util.concurrent.C2947a;
import p033j$.util.function.BiFunction;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2955b;
import p033j$.util.function.InterfaceC2966m;
import p033j$.util.function.InterfaceC2971r;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.H1 */
/* loaded from: classes2.dex */
public final class C3040H1 extends C3076N1 {

    /* renamed from: k */
    public static final /* synthetic */ int f847k = 0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3040H1(AbstractC3290y2 abstractC3290y2, InterfaceC2992s interfaceC2992s, int i) {
        super(abstractC3290y2, interfaceC2992s, new InterfaceC2971r() { // from class: j$.util.stream.G1
            @Override // p033j$.util.function.InterfaceC2971r
            public final Object apply(long j) {
                return AbstractC3284x2.m323j(j);
            }
        }, new InterfaceC2955b() { // from class: j$.util.stream.F1
            @Override // p033j$.util.function.BiFunction
            public BiFunction andThen(Function function) {
                Objects.requireNonNull(function);
                return new C2947a(this, function);
            }

            @Override // p033j$.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return new C3082O1((InterfaceC3265u1) obj, (InterfaceC3265u1) obj2);
            }
        });
        if (i == 1) {
            super(abstractC3290y2, interfaceC2992s, new InterfaceC2971r() { // from class: j$.util.stream.J1
                @Override // p033j$.util.function.InterfaceC2971r
                public final Object apply(long j) {
                    return AbstractC3284x2.m317p(j);
                }
            }, new InterfaceC2955b() { // from class: j$.util.stream.I1
                @Override // p033j$.util.function.BiFunction
                public BiFunction andThen(Function function) {
                    Objects.requireNonNull(function);
                    return new C2947a(this, function);
                }

                @Override // p033j$.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return new C3088P1((InterfaceC3277w1) obj, (InterfaceC3277w1) obj2);
                }
            });
        } else if (i != 2) {
        } else {
            super(abstractC3290y2, interfaceC2992s, new InterfaceC2971r() { // from class: j$.util.stream.L1
                @Override // p033j$.util.function.InterfaceC2971r
                public final Object apply(long j) {
                    return AbstractC3284x2.m316q(j);
                }
            }, new InterfaceC2955b() { // from class: j$.util.stream.K1
                @Override // p033j$.util.function.BiFunction
                public BiFunction andThen(Function function) {
                    Objects.requireNonNull(function);
                    return new C2947a(this, function);
                }

                @Override // p033j$.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return new C3094Q1((InterfaceC3289y1) obj, (InterfaceC3289y1) obj2);
                }
            });
        }
    }

    public C3040H1(AbstractC3290y2 abstractC3290y2, InterfaceC2966m interfaceC2966m, InterfaceC2992s interfaceC2992s) {
        super(abstractC3290y2, interfaceC2992s, new C3149b(interfaceC2966m), new InterfaceC2955b() { // from class: j$.util.stream.M1
            @Override // p033j$.util.function.BiFunction
            public BiFunction andThen(Function function) {
                Objects.requireNonNull(function);
                return new C2947a(this, function);
            }

            @Override // p033j$.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return new C3104S1((InterfaceC2998A1) obj, (InterfaceC2998A1) obj2);
            }
        });
    }
}
