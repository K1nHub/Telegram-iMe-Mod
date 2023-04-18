package p034j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.Consumer;
/* renamed from: j$.wrappers.g */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3054g implements InterfaceC2688s {

    /* renamed from: a */
    final /* synthetic */ Spliterator f1178a;

    private /* synthetic */ C3054g(Spliterator spliterator) {
        this.f1178a = spliterator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2688s m132a(Spliterator spliterator) {
        if (spliterator == null) {
            return null;
        }
        return spliterator instanceof C3056h ? ((C3056h) spliterator).f1180a : new C3054g(spliterator);
    }

    @Override // p034j$.util.InterfaceC2688s
    /* renamed from: b */
    public /* synthetic */ boolean mo108b(Consumer consumer) {
        return this.f1178a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ int characteristics() {
        return this.f1178a.characteristics();
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ long estimateSize() {
        return this.f1178a.estimateSize();
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1178a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ Comparator getComparator() {
        return this.f1178a.getComparator();
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1178a.getExactSizeIfKnown();
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1178a.hasCharacteristics(i);
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ InterfaceC2688s trySplit() {
        return m132a(this.f1178a.trySplit());
    }
}
