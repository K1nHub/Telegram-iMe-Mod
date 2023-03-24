package p034j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p034j$.util.InterfaceC2625s;
import p034j$.util.InterfaceC2932t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2603q;
/* renamed from: j$.wrappers.m */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3003m implements InterfaceC2625s.InterfaceC2628c {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfLong f1190a;

    private /* synthetic */ C3003m(Spliterator.OfLong ofLong) {
        this.f1190a = ofLong;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2625s.InterfaceC2628c m134a(Spliterator.OfLong ofLong) {
        if (ofLong == null) {
            return null;
        }
        return ofLong instanceof C3005n ? ((C3005n) ofLong).f1192a : new C3003m(ofLong);
    }

    @Override // p034j$.util.InterfaceC2625s.InterfaceC2628c, p034j$.util.InterfaceC2625s
    /* renamed from: b */
    public /* synthetic */ boolean mo127b(Consumer consumer) {
        return this.f1190a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ int characteristics() {
        return this.f1190a.characteristics();
    }

    @Override // p034j$.util.InterfaceC2625s.InterfaceC2628c
    /* renamed from: d */
    public /* synthetic */ void mo133d(InterfaceC2603q interfaceC2603q) {
        this.f1190a.forEachRemaining(C2990f0.m152a(interfaceC2603q));
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ long estimateSize() {
        return this.f1190a.estimateSize();
    }

    @Override // p034j$.util.InterfaceC2625s.InterfaceC2628c, p034j$.util.InterfaceC2625s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1190a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2932t
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1190a.forEachRemaining((Spliterator.OfLong) obj);
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ Comparator getComparator() {
        return this.f1190a.getComparator();
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1190a.getExactSizeIfKnown();
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1190a.hasCharacteristics(i);
    }

    @Override // p034j$.util.InterfaceC2625s.InterfaceC2628c
    /* renamed from: i */
    public /* synthetic */ boolean mo132i(InterfaceC2603q interfaceC2603q) {
        return this.f1190a.tryAdvance(C2990f0.m152a(interfaceC2603q));
    }

    @Override // p034j$.util.InterfaceC2932t
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1190a.tryAdvance((Spliterator.OfLong) obj);
    }

    @Override // p034j$.util.InterfaceC2625s.InterfaceC2628c, p034j$.util.InterfaceC2932t, p034j$.util.InterfaceC2625s
    public /* synthetic */ InterfaceC2625s.InterfaceC2628c trySplit() {
        return m134a(this.f1190a.trySplit());
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ InterfaceC2625s trySplit() {
        return C2991g.m151a(this.f1190a.trySplit());
    }

    @Override // p034j$.util.InterfaceC2932t, p034j$.util.InterfaceC2625s
    public /* synthetic */ InterfaceC2932t trySplit() {
        return C3007o.m128a(this.f1190a.trySplit());
    }
}
