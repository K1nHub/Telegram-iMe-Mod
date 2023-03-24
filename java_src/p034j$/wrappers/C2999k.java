package p034j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p034j$.util.InterfaceC2625s;
import p034j$.util.InterfaceC2932t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2598l;
/* renamed from: j$.wrappers.k */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2999k implements InterfaceC2625s.InterfaceC2627b {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfInt f1186a;

    private /* synthetic */ C2999k(Spliterator.OfInt ofInt) {
        this.f1186a = ofInt;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2625s.InterfaceC2627b m140a(Spliterator.OfInt ofInt) {
        if (ofInt == null) {
            return null;
        }
        return ofInt instanceof C3001l ? ((C3001l) ofInt).f1188a : new C2999k(ofInt);
    }

    @Override // p034j$.util.InterfaceC2625s.InterfaceC2627b, p034j$.util.InterfaceC2625s
    /* renamed from: b */
    public /* synthetic */ boolean mo127b(Consumer consumer) {
        return this.f1186a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2625s.InterfaceC2627b
    /* renamed from: c */
    public /* synthetic */ void mo139c(InterfaceC2598l interfaceC2598l) {
        this.f1186a.forEachRemaining(C2970Q.m178a(interfaceC2598l));
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ int characteristics() {
        return this.f1186a.characteristics();
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ long estimateSize() {
        return this.f1186a.estimateSize();
    }

    @Override // p034j$.util.InterfaceC2625s.InterfaceC2627b, p034j$.util.InterfaceC2625s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1186a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2932t
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1186a.forEachRemaining((Spliterator.OfInt) obj);
    }

    @Override // p034j$.util.InterfaceC2625s.InterfaceC2627b
    /* renamed from: g */
    public /* synthetic */ boolean mo138g(InterfaceC2598l interfaceC2598l) {
        return this.f1186a.tryAdvance(C2970Q.m178a(interfaceC2598l));
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ Comparator getComparator() {
        return this.f1186a.getComparator();
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1186a.getExactSizeIfKnown();
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1186a.hasCharacteristics(i);
    }

    @Override // p034j$.util.InterfaceC2932t
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1186a.tryAdvance((Spliterator.OfInt) obj);
    }

    @Override // p034j$.util.InterfaceC2625s.InterfaceC2627b, p034j$.util.InterfaceC2932t, p034j$.util.InterfaceC2625s
    public /* synthetic */ InterfaceC2625s.InterfaceC2627b trySplit() {
        return m140a(this.f1186a.trySplit());
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ InterfaceC2625s trySplit() {
        return C2991g.m151a(this.f1186a.trySplit());
    }

    @Override // p034j$.util.InterfaceC2932t, p034j$.util.InterfaceC2625s
    public /* synthetic */ InterfaceC2932t trySplit() {
        return C3007o.m128a(this.f1186a.trySplit());
    }
}
