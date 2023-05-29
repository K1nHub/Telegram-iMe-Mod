package p034j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p034j$.util.InterfaceC2732s;
import p034j$.util.InterfaceC3039t;
import p034j$.util.function.Consumer;
/* renamed from: j$.wrappers.o */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3114o implements InterfaceC3039t {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfPrimitive f1197a;

    private /* synthetic */ C3114o(Spliterator.OfPrimitive ofPrimitive) {
        this.f1197a = ofPrimitive;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC3039t m114a(Spliterator.OfPrimitive ofPrimitive) {
        if (ofPrimitive == null) {
            return null;
        }
        return ofPrimitive instanceof C3116p ? ((C3116p) ofPrimitive).f1199a : new C3114o(ofPrimitive);
    }

    @Override // p034j$.util.InterfaceC2732s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return this.f1197a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ int characteristics() {
        return this.f1197a.characteristics();
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ long estimateSize() {
        return this.f1197a.estimateSize();
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1197a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC3039t
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1197a.forEachRemaining((Spliterator.OfPrimitive) obj);
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ Comparator getComparator() {
        return this.f1197a.getComparator();
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1197a.getExactSizeIfKnown();
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1197a.hasCharacteristics(i);
    }

    @Override // p034j$.util.InterfaceC3039t
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1197a.tryAdvance((Spliterator.OfPrimitive) obj);
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ InterfaceC2732s trySplit() {
        return C3098g.m137a(this.f1197a.trySplit());
    }

    @Override // p034j$.util.InterfaceC3039t, p034j$.util.InterfaceC2732s
    public /* synthetic */ InterfaceC3039t trySplit() {
        return m114a(this.f1197a.trySplit());
    }
}
