package p034j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p034j$.util.InterfaceC2487s;
import p034j$.util.InterfaceC2794t;
import p034j$.util.function.Consumer;
/* renamed from: j$.wrappers.o */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2869o implements InterfaceC2794t {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfPrimitive f1188a;

    private /* synthetic */ C2869o(Spliterator.OfPrimitive ofPrimitive) {
        this.f1188a = ofPrimitive;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2794t m129a(Spliterator.OfPrimitive ofPrimitive) {
        if (ofPrimitive == null) {
            return null;
        }
        return ofPrimitive instanceof C2871p ? ((C2871p) ofPrimitive).f1190a : new C2869o(ofPrimitive);
    }

    @Override // p034j$.util.InterfaceC2487s
    /* renamed from: b */
    public /* synthetic */ boolean mo128b(Consumer consumer) {
        return this.f1188a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ int characteristics() {
        return this.f1188a.characteristics();
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ long estimateSize() {
        return this.f1188a.estimateSize();
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1188a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2794t
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1188a.forEachRemaining((Spliterator.OfPrimitive) obj);
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ Comparator getComparator() {
        return this.f1188a.getComparator();
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1188a.getExactSizeIfKnown();
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1188a.hasCharacteristics(i);
    }

    @Override // p034j$.util.InterfaceC2794t
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1188a.tryAdvance((Spliterator.OfPrimitive) obj);
    }

    @Override // p034j$.util.InterfaceC2794t, p034j$.util.InterfaceC2487s
    public /* synthetic */ InterfaceC2487s trySplit() {
        return C2853g.m152a(this.f1188a.trySplit());
    }

    @Override // p034j$.util.InterfaceC2794t, p034j$.util.InterfaceC2487s
    public /* synthetic */ InterfaceC2794t trySplit() {
        return m129a(this.f1188a.trySplit());
    }
}
