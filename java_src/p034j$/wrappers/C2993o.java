package p034j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p034j$.util.InterfaceC2611s;
import p034j$.util.InterfaceC2918t;
import p034j$.util.function.Consumer;
/* renamed from: j$.wrappers.o */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2993o implements InterfaceC2918t {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfPrimitive f1193a;

    private /* synthetic */ C2993o(Spliterator.OfPrimitive ofPrimitive) {
        this.f1193a = ofPrimitive;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2918t m129a(Spliterator.OfPrimitive ofPrimitive) {
        if (ofPrimitive == null) {
            return null;
        }
        return ofPrimitive instanceof C2995p ? ((C2995p) ofPrimitive).f1195a : new C2993o(ofPrimitive);
    }

    @Override // p034j$.util.InterfaceC2611s
    /* renamed from: b */
    public /* synthetic */ boolean mo128b(Consumer consumer) {
        return this.f1193a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ int characteristics() {
        return this.f1193a.characteristics();
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ long estimateSize() {
        return this.f1193a.estimateSize();
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1193a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2918t
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1193a.forEachRemaining((Spliterator.OfPrimitive) obj);
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ Comparator getComparator() {
        return this.f1193a.getComparator();
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1193a.getExactSizeIfKnown();
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1193a.hasCharacteristics(i);
    }

    @Override // p034j$.util.InterfaceC2918t
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1193a.tryAdvance((Spliterator.OfPrimitive) obj);
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ InterfaceC2611s trySplit() {
        return C2977g.m152a(this.f1193a.trySplit());
    }

    @Override // p034j$.util.InterfaceC2918t, p034j$.util.InterfaceC2611s
    public /* synthetic */ InterfaceC2918t trySplit() {
        return m129a(this.f1193a.trySplit());
    }
}
