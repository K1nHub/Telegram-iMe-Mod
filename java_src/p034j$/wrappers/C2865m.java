package p034j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p034j$.util.InterfaceC2487s;
import p034j$.util.InterfaceC2794t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2465q;
/* renamed from: j$.wrappers.m */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2865m implements InterfaceC2487s.InterfaceC2490c {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfLong f1184a;

    private /* synthetic */ C2865m(Spliterator.OfLong ofLong) {
        this.f1184a = ofLong;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2487s.InterfaceC2490c m135a(Spliterator.OfLong ofLong) {
        if (ofLong == null) {
            return null;
        }
        return ofLong instanceof C2867n ? ((C2867n) ofLong).f1186a : new C2865m(ofLong);
    }

    @Override // p034j$.util.InterfaceC2487s.InterfaceC2490c, p034j$.util.InterfaceC2487s
    /* renamed from: b */
    public /* synthetic */ boolean mo128b(Consumer consumer) {
        return this.f1184a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ int characteristics() {
        return this.f1184a.characteristics();
    }

    @Override // p034j$.util.InterfaceC2487s.InterfaceC2490c
    /* renamed from: d */
    public /* synthetic */ void mo134d(InterfaceC2465q interfaceC2465q) {
        this.f1184a.forEachRemaining(C2852f0.m153a(interfaceC2465q));
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ long estimateSize() {
        return this.f1184a.estimateSize();
    }

    @Override // p034j$.util.InterfaceC2487s.InterfaceC2490c, p034j$.util.InterfaceC2487s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1184a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2794t
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1184a.forEachRemaining((Spliterator.OfLong) obj);
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ Comparator getComparator() {
        return this.f1184a.getComparator();
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1184a.getExactSizeIfKnown();
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1184a.hasCharacteristics(i);
    }

    @Override // p034j$.util.InterfaceC2487s.InterfaceC2490c
    /* renamed from: i */
    public /* synthetic */ boolean mo133i(InterfaceC2465q interfaceC2465q) {
        return this.f1184a.tryAdvance(C2852f0.m153a(interfaceC2465q));
    }

    @Override // p034j$.util.InterfaceC2794t
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1184a.tryAdvance((Spliterator.OfLong) obj);
    }

    @Override // p034j$.util.InterfaceC2487s.InterfaceC2490c, p034j$.util.InterfaceC2794t, p034j$.util.InterfaceC2487s
    public /* synthetic */ InterfaceC2487s.InterfaceC2490c trySplit() {
        return m135a(this.f1184a.trySplit());
    }

    @Override // p034j$.util.InterfaceC2487s.InterfaceC2490c, p034j$.util.InterfaceC2794t, p034j$.util.InterfaceC2487s
    public /* synthetic */ InterfaceC2487s trySplit() {
        return C2853g.m152a(this.f1184a.trySplit());
    }

    @Override // p034j$.util.InterfaceC2487s.InterfaceC2490c, p034j$.util.InterfaceC2794t, p034j$.util.InterfaceC2487s
    public /* synthetic */ InterfaceC2794t trySplit() {
        return C2869o.m129a(this.f1184a.trySplit());
    }
}
