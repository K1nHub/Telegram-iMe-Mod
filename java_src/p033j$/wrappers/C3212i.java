package p033j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2816f;
/* renamed from: j$.wrappers.i */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3212i implements Spliterator.InterfaceC2772a {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfDouble f1315a;

    private /* synthetic */ C3212i(Spliterator.OfDouble ofDouble) {
        this.f1315a = ofDouble;
    }

    /* renamed from: a */
    public static /* synthetic */ Spliterator.InterfaceC2772a m199a(Spliterator.OfDouble ofDouble) {
        if (ofDouble == null) {
            return null;
        }
        return ofDouble instanceof C3214j ? ((C3214j) ofDouble).f1317a : new C3212i(ofDouble);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2772a, p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo178b(Consumer consumer) {
        return this.f1315a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ int characteristics() {
        return this.f1315a.characteristics();
    }

    @Override // p033j$.util.Spliterator.InterfaceC2772a
    /* renamed from: e */
    public /* synthetic */ void mo198e(InterfaceC2816f interfaceC2816f) {
        this.f1315a.forEachRemaining(C3246z.m154a(interfaceC2816f));
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ long estimateSize() {
        return this.f1315a.estimateSize();
    }

    @Override // p033j$.util.Spliterator.InterfaceC2772a, p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1315a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.Spliterator.InterfaceC2775d
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

    @Override // p033j$.util.Spliterator.InterfaceC2772a
    /* renamed from: n */
    public /* synthetic */ boolean mo197n(InterfaceC2816f interfaceC2816f) {
        return this.f1315a.tryAdvance(C3246z.m154a(interfaceC2816f));
    }

    @Override // p033j$.util.Spliterator.InterfaceC2775d
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1315a.tryAdvance((Spliterator.OfDouble) obj);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2772a, p033j$.util.Spliterator.InterfaceC2775d, p033j$.util.Spliterator
    public /* synthetic */ Spliterator.InterfaceC2772a trySplit() {
        return m199a(this.f1315a.trySplit());
    }

    @Override // p033j$.util.Spliterator.InterfaceC2775d, p033j$.util.Spliterator
    public /* synthetic */ Spliterator.InterfaceC2775d trySplit() {
        return C3224o.m179a(this.f1315a.trySplit());
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ p033j$.util.Spliterator trySplit() {
        return C3208g.m204a(this.f1315a.trySplit());
    }
}
