package p034j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p034j$.util.InterfaceC2625s;
import p034j$.util.InterfaceC2932t;
import p034j$.util.function.Consumer;
/* renamed from: j$.wrappers.o */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3007o implements InterfaceC2932t {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfPrimitive f1194a;

    private /* synthetic */ C3007o(Spliterator.OfPrimitive ofPrimitive) {
        this.f1194a = ofPrimitive;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2932t m128a(Spliterator.OfPrimitive ofPrimitive) {
        if (ofPrimitive == null) {
            return null;
        }
        return ofPrimitive instanceof C3009p ? ((C3009p) ofPrimitive).f1196a : new C3007o(ofPrimitive);
    }

    @Override // p034j$.util.InterfaceC2625s
    /* renamed from: b */
    public /* synthetic */ boolean mo127b(Consumer consumer) {
        return this.f1194a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ int characteristics() {
        return this.f1194a.characteristics();
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ long estimateSize() {
        return this.f1194a.estimateSize();
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1194a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2932t
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1194a.forEachRemaining((Spliterator.OfPrimitive) obj);
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ Comparator getComparator() {
        return this.f1194a.getComparator();
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1194a.getExactSizeIfKnown();
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1194a.hasCharacteristics(i);
    }

    @Override // p034j$.util.InterfaceC2932t
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1194a.tryAdvance((Spliterator.OfPrimitive) obj);
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ InterfaceC2625s trySplit() {
        return C2991g.m151a(this.f1194a.trySplit());
    }

    @Override // p034j$.util.InterfaceC2932t, p034j$.util.InterfaceC2625s
    public /* synthetic */ InterfaceC2932t trySplit() {
        return m128a(this.f1194a.trySplit());
    }
}
