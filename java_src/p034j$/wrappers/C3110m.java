package p034j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p034j$.util.InterfaceC2732s;
import p034j$.util.InterfaceC3039t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2710q;
/* renamed from: j$.wrappers.m */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3110m implements InterfaceC2732s.InterfaceC2735c {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfLong f1193a;

    private /* synthetic */ C3110m(Spliterator.OfLong ofLong) {
        this.f1193a = ofLong;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2732s.InterfaceC2735c m120a(Spliterator.OfLong ofLong) {
        if (ofLong == null) {
            return null;
        }
        return ofLong instanceof C3112n ? ((C3112n) ofLong).f1195a : new C3110m(ofLong);
    }

    @Override // p034j$.util.InterfaceC2732s.InterfaceC2735c, p034j$.util.InterfaceC2732s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return this.f1193a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ int characteristics() {
        return this.f1193a.characteristics();
    }

    @Override // p034j$.util.InterfaceC2732s.InterfaceC2735c
    /* renamed from: d */
    public /* synthetic */ void mo119d(InterfaceC2710q interfaceC2710q) {
        this.f1193a.forEachRemaining(C3097f0.m138a(interfaceC2710q));
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ long estimateSize() {
        return this.f1193a.estimateSize();
    }

    @Override // p034j$.util.InterfaceC2732s.InterfaceC2735c, p034j$.util.InterfaceC2732s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1193a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC3039t
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1193a.forEachRemaining((Spliterator.OfLong) obj);
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ Comparator getComparator() {
        return this.f1193a.getComparator();
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1193a.getExactSizeIfKnown();
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1193a.hasCharacteristics(i);
    }

    @Override // p034j$.util.InterfaceC2732s.InterfaceC2735c
    /* renamed from: i */
    public /* synthetic */ boolean mo118i(InterfaceC2710q interfaceC2710q) {
        return this.f1193a.tryAdvance(C3097f0.m138a(interfaceC2710q));
    }

    @Override // p034j$.util.InterfaceC3039t
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1193a.tryAdvance((Spliterator.OfLong) obj);
    }

    @Override // p034j$.util.InterfaceC2732s.InterfaceC2735c, p034j$.util.InterfaceC3039t, p034j$.util.InterfaceC2732s
    public /* synthetic */ InterfaceC2732s.InterfaceC2735c trySplit() {
        return m120a(this.f1193a.trySplit());
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ InterfaceC2732s trySplit() {
        return C3098g.m137a(this.f1193a.trySplit());
    }

    @Override // p034j$.util.InterfaceC3039t, p034j$.util.InterfaceC2732s
    public /* synthetic */ InterfaceC3039t trySplit() {
        return C3114o.m114a(this.f1193a.trySplit());
    }
}
