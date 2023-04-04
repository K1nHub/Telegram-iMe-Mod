package p035j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p035j$.util.InterfaceC2701s;
import p035j$.util.InterfaceC3008t;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2679q;
/* renamed from: j$.wrappers.m */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3079m implements InterfaceC2701s.InterfaceC2704c {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfLong f1195a;

    private /* synthetic */ C3079m(Spliterator.OfLong ofLong) {
        this.f1195a = ofLong;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2701s.InterfaceC2704c m129a(Spliterator.OfLong ofLong) {
        if (ofLong == null) {
            return null;
        }
        return ofLong instanceof C3081n ? ((C3081n) ofLong).f1197a : new C3079m(ofLong);
    }

    @Override // p035j$.util.InterfaceC2701s.InterfaceC2704c, p035j$.util.InterfaceC2701s
    /* renamed from: b */
    public /* synthetic */ boolean mo122b(Consumer consumer) {
        return this.f1195a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ int characteristics() {
        return this.f1195a.characteristics();
    }

    @Override // p035j$.util.InterfaceC2701s.InterfaceC2704c
    /* renamed from: d */
    public /* synthetic */ void mo128d(InterfaceC2679q interfaceC2679q) {
        this.f1195a.forEachRemaining(C3066f0.m147a(interfaceC2679q));
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ long estimateSize() {
        return this.f1195a.estimateSize();
    }

    @Override // p035j$.util.InterfaceC2701s.InterfaceC2704c, p035j$.util.InterfaceC2701s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1195a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p035j$.util.InterfaceC3008t
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1195a.forEachRemaining((Spliterator.OfLong) obj);
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ Comparator getComparator() {
        return this.f1195a.getComparator();
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1195a.getExactSizeIfKnown();
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1195a.hasCharacteristics(i);
    }

    @Override // p035j$.util.InterfaceC2701s.InterfaceC2704c
    /* renamed from: i */
    public /* synthetic */ boolean mo127i(InterfaceC2679q interfaceC2679q) {
        return this.f1195a.tryAdvance(C3066f0.m147a(interfaceC2679q));
    }

    @Override // p035j$.util.InterfaceC3008t
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1195a.tryAdvance((Spliterator.OfLong) obj);
    }

    @Override // p035j$.util.InterfaceC2701s.InterfaceC2704c, p035j$.util.InterfaceC3008t, p035j$.util.InterfaceC2701s
    public /* synthetic */ InterfaceC2701s.InterfaceC2704c trySplit() {
        return m129a(this.f1195a.trySplit());
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ InterfaceC2701s trySplit() {
        return C3067g.m146a(this.f1195a.trySplit());
    }

    @Override // p035j$.util.InterfaceC3008t, p035j$.util.InterfaceC2701s
    public /* synthetic */ InterfaceC3008t trySplit() {
        return C3083o.m123a(this.f1195a.trySplit());
    }
}
