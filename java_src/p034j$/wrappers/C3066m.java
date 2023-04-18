package p034j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p034j$.util.InterfaceC2688s;
import p034j$.util.InterfaceC2995t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2666q;
/* renamed from: j$.wrappers.m */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3066m implements InterfaceC2688s.InterfaceC2691c {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfLong f1190a;

    private /* synthetic */ C3066m(Spliterator.OfLong ofLong) {
        this.f1190a = ofLong;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2688s.InterfaceC2691c m115a(Spliterator.OfLong ofLong) {
        if (ofLong == null) {
            return null;
        }
        return ofLong instanceof C3068n ? ((C3068n) ofLong).f1192a : new C3066m(ofLong);
    }

    @Override // p034j$.util.InterfaceC2688s.InterfaceC2691c, p034j$.util.InterfaceC2688s
    /* renamed from: b */
    public /* synthetic */ boolean mo108b(Consumer consumer) {
        return this.f1190a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ int characteristics() {
        return this.f1190a.characteristics();
    }

    @Override // p034j$.util.InterfaceC2688s.InterfaceC2691c
    /* renamed from: d */
    public /* synthetic */ void mo114d(InterfaceC2666q interfaceC2666q) {
        this.f1190a.forEachRemaining(C3053f0.m133a(interfaceC2666q));
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ long estimateSize() {
        return this.f1190a.estimateSize();
    }

    @Override // p034j$.util.InterfaceC2688s.InterfaceC2691c, p034j$.util.InterfaceC2688s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1190a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2995t
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1190a.forEachRemaining((Spliterator.OfLong) obj);
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ Comparator getComparator() {
        return this.f1190a.getComparator();
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1190a.getExactSizeIfKnown();
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1190a.hasCharacteristics(i);
    }

    @Override // p034j$.util.InterfaceC2688s.InterfaceC2691c
    /* renamed from: i */
    public /* synthetic */ boolean mo113i(InterfaceC2666q interfaceC2666q) {
        return this.f1190a.tryAdvance(C3053f0.m133a(interfaceC2666q));
    }

    @Override // p034j$.util.InterfaceC2995t
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1190a.tryAdvance((Spliterator.OfLong) obj);
    }

    @Override // p034j$.util.InterfaceC2688s.InterfaceC2691c, p034j$.util.InterfaceC2995t, p034j$.util.InterfaceC2688s
    public /* synthetic */ InterfaceC2688s.InterfaceC2691c trySplit() {
        return m115a(this.f1190a.trySplit());
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ InterfaceC2688s trySplit() {
        return C3054g.m132a(this.f1190a.trySplit());
    }

    @Override // p034j$.util.InterfaceC2995t, p034j$.util.InterfaceC2688s
    public /* synthetic */ InterfaceC2995t trySplit() {
        return C3070o.m109a(this.f1190a.trySplit());
    }
}
