package p035j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.Consumer;
/* renamed from: j$.wrappers.g */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3067g implements InterfaceC2701s {

    /* renamed from: a */
    final /* synthetic */ Spliterator f1183a;

    private /* synthetic */ C3067g(Spliterator spliterator) {
        this.f1183a = spliterator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2701s m146a(Spliterator spliterator) {
        if (spliterator == null) {
            return null;
        }
        return spliterator instanceof C3069h ? ((C3069h) spliterator).f1185a : new C3067g(spliterator);
    }

    @Override // p035j$.util.InterfaceC2701s
    /* renamed from: b */
    public /* synthetic */ boolean mo122b(Consumer consumer) {
        return this.f1183a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ int characteristics() {
        return this.f1183a.characteristics();
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ long estimateSize() {
        return this.f1183a.estimateSize();
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1183a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ Comparator getComparator() {
        return this.f1183a.getComparator();
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1183a.getExactSizeIfKnown();
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1183a.hasCharacteristics(i);
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ InterfaceC2701s trySplit() {
        return m146a(this.f1183a.trySplit());
    }
}
