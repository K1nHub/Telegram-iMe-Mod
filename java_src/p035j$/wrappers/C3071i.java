package p035j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p035j$.util.InterfaceC2701s;
import p035j$.util.InterfaceC3008t;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2668f;
/* renamed from: j$.wrappers.i */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3071i implements InterfaceC2701s.InterfaceC2702a {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfDouble f1187a;

    private /* synthetic */ C3071i(Spliterator.OfDouble ofDouble) {
        this.f1187a = ofDouble;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2701s.InterfaceC2702a m142a(Spliterator.OfDouble ofDouble) {
        if (ofDouble == null) {
            return null;
        }
        return ofDouble instanceof C3073j ? ((C3073j) ofDouble).f1189a : new C3071i(ofDouble);
    }

    @Override // p035j$.util.InterfaceC2701s.InterfaceC2702a, p035j$.util.InterfaceC2701s
    /* renamed from: b */
    public /* synthetic */ boolean mo122b(Consumer consumer) {
        return this.f1187a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ int characteristics() {
        return this.f1187a.characteristics();
    }

    @Override // p035j$.util.InterfaceC2701s.InterfaceC2702a
    /* renamed from: e */
    public /* synthetic */ void mo141e(InterfaceC2668f interfaceC2668f) {
        this.f1187a.forEachRemaining(C3015A.m241a(interfaceC2668f));
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ long estimateSize() {
        return this.f1187a.estimateSize();
    }

    @Override // p035j$.util.InterfaceC2701s.InterfaceC2702a, p035j$.util.InterfaceC2701s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1187a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p035j$.util.InterfaceC3008t
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1187a.forEachRemaining((Spliterator.OfDouble) obj);
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ Comparator getComparator() {
        return this.f1187a.getComparator();
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1187a.getExactSizeIfKnown();
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1187a.hasCharacteristics(i);
    }

    @Override // p035j$.util.InterfaceC2701s.InterfaceC2702a
    /* renamed from: k */
    public /* synthetic */ boolean mo140k(InterfaceC2668f interfaceC2668f) {
        return this.f1187a.tryAdvance(C3015A.m241a(interfaceC2668f));
    }

    @Override // p035j$.util.InterfaceC3008t
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1187a.tryAdvance((Spliterator.OfDouble) obj);
    }

    @Override // p035j$.util.InterfaceC2701s.InterfaceC2702a, p035j$.util.InterfaceC3008t, p035j$.util.InterfaceC2701s
    public /* synthetic */ InterfaceC2701s.InterfaceC2702a trySplit() {
        return m142a(this.f1187a.trySplit());
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ InterfaceC2701s trySplit() {
        return C3067g.m146a(this.f1187a.trySplit());
    }

    @Override // p035j$.util.InterfaceC3008t, p035j$.util.InterfaceC2701s
    public /* synthetic */ InterfaceC3008t trySplit() {
        return C3083o.m123a(this.f1187a.trySplit());
    }
}
