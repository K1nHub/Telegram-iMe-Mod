package p033j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2815f;
/* renamed from: j$.wrappers.i */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3211i implements Spliterator.InterfaceC2771a {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfDouble f1315a;

    private /* synthetic */ C3211i(Spliterator.OfDouble ofDouble) {
        this.f1315a = ofDouble;
    }

    /* renamed from: a */
    public static /* synthetic */ Spliterator.InterfaceC2771a m203a(Spliterator.OfDouble ofDouble) {
        if (ofDouble == null) {
            return null;
        }
        return ofDouble instanceof C3213j ? ((C3213j) ofDouble).f1317a : new C3211i(ofDouble);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2771a, p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo182b(Consumer consumer) {
        return this.f1315a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ int characteristics() {
        return this.f1315a.characteristics();
    }

    @Override // p033j$.util.Spliterator.InterfaceC2771a
    /* renamed from: e */
    public /* synthetic */ void mo202e(InterfaceC2815f interfaceC2815f) {
        this.f1315a.forEachRemaining(C3245z.m159a(interfaceC2815f));
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ long estimateSize() {
        return this.f1315a.estimateSize();
    }

    @Override // p033j$.util.Spliterator.InterfaceC2771a, p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1315a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.Spliterator.InterfaceC2774d
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1315a.forEachRemaining((Spliterator.OfDouble) obj);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ Comparator getComparator() {
        return this.f1315a.getComparator();
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1315a.getExactSizeIfKnown();
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1315a.hasCharacteristics(i);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2771a
    /* renamed from: n */
    public /* synthetic */ boolean mo201n(InterfaceC2815f interfaceC2815f) {
        return this.f1315a.tryAdvance(C3245z.m159a(interfaceC2815f));
    }

    @Override // p033j$.util.Spliterator.InterfaceC2774d
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1315a.tryAdvance((Spliterator.OfDouble) obj);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2771a, p033j$.util.Spliterator.InterfaceC2774d, p033j$.util.Spliterator
    public /* synthetic */ Spliterator.InterfaceC2771a trySplit() {
        return m203a(this.f1315a.trySplit());
    }

    @Override // p033j$.util.Spliterator.InterfaceC2774d, p033j$.util.Spliterator
    public /* synthetic */ Spliterator.InterfaceC2774d trySplit() {
        return C3223o.m183a(this.f1315a.trySplit());
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ p033j$.util.Spliterator trySplit() {
        return C3207g.m208a(this.f1315a.trySplit());
    }
}
