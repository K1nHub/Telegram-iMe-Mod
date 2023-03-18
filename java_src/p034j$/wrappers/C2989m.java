package p034j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p034j$.util.InterfaceC2611s;
import p034j$.util.InterfaceC2918t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2589q;
/* renamed from: j$.wrappers.m */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2989m implements InterfaceC2611s.InterfaceC2614c {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfLong f1189a;

    private /* synthetic */ C2989m(Spliterator.OfLong ofLong) {
        this.f1189a = ofLong;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2611s.InterfaceC2614c m135a(Spliterator.OfLong ofLong) {
        if (ofLong == null) {
            return null;
        }
        return ofLong instanceof C2991n ? ((C2991n) ofLong).f1191a : new C2989m(ofLong);
    }

    @Override // p034j$.util.InterfaceC2611s.InterfaceC2614c, p034j$.util.InterfaceC2611s
    /* renamed from: b */
    public /* synthetic */ boolean mo128b(Consumer consumer) {
        return this.f1189a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ int characteristics() {
        return this.f1189a.characteristics();
    }

    @Override // p034j$.util.InterfaceC2611s.InterfaceC2614c
    /* renamed from: d */
    public /* synthetic */ void mo134d(InterfaceC2589q interfaceC2589q) {
        this.f1189a.forEachRemaining(C2976f0.m153a(interfaceC2589q));
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ long estimateSize() {
        return this.f1189a.estimateSize();
    }

    @Override // p034j$.util.InterfaceC2611s.InterfaceC2614c, p034j$.util.InterfaceC2611s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1189a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2918t
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1189a.forEachRemaining((Spliterator.OfLong) obj);
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ Comparator getComparator() {
        return this.f1189a.getComparator();
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1189a.getExactSizeIfKnown();
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1189a.hasCharacteristics(i);
    }

    @Override // p034j$.util.InterfaceC2611s.InterfaceC2614c
    /* renamed from: i */
    public /* synthetic */ boolean mo133i(InterfaceC2589q interfaceC2589q) {
        return this.f1189a.tryAdvance(C2976f0.m153a(interfaceC2589q));
    }

    @Override // p034j$.util.InterfaceC2918t
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1189a.tryAdvance((Spliterator.OfLong) obj);
    }

    @Override // p034j$.util.InterfaceC2611s.InterfaceC2614c, p034j$.util.InterfaceC2918t, p034j$.util.InterfaceC2611s
    public /* synthetic */ InterfaceC2611s.InterfaceC2614c trySplit() {
        return m135a(this.f1189a.trySplit());
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ InterfaceC2611s trySplit() {
        return C2977g.m152a(this.f1189a.trySplit());
    }

    @Override // p034j$.util.InterfaceC2918t, p034j$.util.InterfaceC2611s
    public /* synthetic */ InterfaceC2918t trySplit() {
        return C2993o.m129a(this.f1189a.trySplit());
    }
}
