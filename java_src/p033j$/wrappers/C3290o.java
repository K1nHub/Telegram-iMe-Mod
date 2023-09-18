package p033j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p033j$.util.InterfaceC2908s;
import p033j$.util.InterfaceC3215t;
import p033j$.util.function.Consumer;
/* renamed from: j$.wrappers.o */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3290o implements InterfaceC3215t {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfPrimitive f1283a;

    private /* synthetic */ C3290o(Spliterator.OfPrimitive ofPrimitive) {
        this.f1283a = ofPrimitive;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC3215t m132a(Spliterator.OfPrimitive ofPrimitive) {
        if (ofPrimitive == null) {
            return null;
        }
        return ofPrimitive instanceof C3292p ? ((C3292p) ofPrimitive).f1285a : new C3290o(ofPrimitive);
    }

    @Override // p033j$.util.InterfaceC2908s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return this.f1283a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ int characteristics() {
        return this.f1283a.characteristics();
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ long estimateSize() {
        return this.f1283a.estimateSize();
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1283a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC3215t
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1283a.forEachRemaining((Spliterator.OfPrimitive) obj);
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ Comparator getComparator() {
        return this.f1283a.getComparator();
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1283a.getExactSizeIfKnown();
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1283a.hasCharacteristics(i);
    }

    @Override // p033j$.util.InterfaceC3215t
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1283a.tryAdvance((Spliterator.OfPrimitive) obj);
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ InterfaceC2908s trySplit() {
        return C3274g.m155a(this.f1283a.trySplit());
    }

    @Override // p033j$.util.InterfaceC3215t, p033j$.util.InterfaceC2908s
    public /* synthetic */ InterfaceC3215t trySplit() {
        return m132a(this.f1283a.trySplit());
    }
}
