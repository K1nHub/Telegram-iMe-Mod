package p034j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p034j$.util.InterfaceC2688s;
import p034j$.util.InterfaceC2995t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2661l;
/* renamed from: j$.wrappers.k */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3062k implements InterfaceC2688s.InterfaceC2690b {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfInt f1186a;

    private /* synthetic */ C3062k(Spliterator.OfInt ofInt) {
        this.f1186a = ofInt;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2688s.InterfaceC2690b m121a(Spliterator.OfInt ofInt) {
        if (ofInt == null) {
            return null;
        }
        return ofInt instanceof C3064l ? ((C3064l) ofInt).f1188a : new C3062k(ofInt);
    }

    @Override // p034j$.util.InterfaceC2688s.InterfaceC2690b, p034j$.util.InterfaceC2688s
    /* renamed from: b */
    public /* synthetic */ boolean mo108b(Consumer consumer) {
        return this.f1186a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2688s.InterfaceC2690b
    /* renamed from: c */
    public /* synthetic */ void mo120c(InterfaceC2661l interfaceC2661l) {
        this.f1186a.forEachRemaining(C3033Q.m159a(interfaceC2661l));
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ int characteristics() {
        return this.f1186a.characteristics();
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ long estimateSize() {
        return this.f1186a.estimateSize();
    }

    @Override // p034j$.util.InterfaceC2688s.InterfaceC2690b, p034j$.util.InterfaceC2688s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1186a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2995t
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1186a.forEachRemaining((Spliterator.OfInt) obj);
    }

    @Override // p034j$.util.InterfaceC2688s.InterfaceC2690b
    /* renamed from: g */
    public /* synthetic */ boolean mo119g(InterfaceC2661l interfaceC2661l) {
        return this.f1186a.tryAdvance(C3033Q.m159a(interfaceC2661l));
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ Comparator getComparator() {
        return this.f1186a.getComparator();
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1186a.getExactSizeIfKnown();
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1186a.hasCharacteristics(i);
    }

    @Override // p034j$.util.InterfaceC2995t
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1186a.tryAdvance((Spliterator.OfInt) obj);
    }

    @Override // p034j$.util.InterfaceC2688s.InterfaceC2690b, p034j$.util.InterfaceC2995t, p034j$.util.InterfaceC2688s
    public /* synthetic */ InterfaceC2688s.InterfaceC2690b trySplit() {
        return m121a(this.f1186a.trySplit());
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ InterfaceC2688s trySplit() {
        return C3054g.m132a(this.f1186a.trySplit());
    }

    @Override // p034j$.util.InterfaceC2995t, p034j$.util.InterfaceC2688s
    public /* synthetic */ InterfaceC2995t trySplit() {
        return C3070o.m109a(this.f1186a.trySplit());
    }
}
