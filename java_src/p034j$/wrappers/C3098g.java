package p034j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.Consumer;
/* renamed from: j$.wrappers.g */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3098g implements InterfaceC2732s {

    /* renamed from: a */
    final /* synthetic */ Spliterator f1181a;

    private /* synthetic */ C3098g(Spliterator spliterator) {
        this.f1181a = spliterator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2732s m137a(Spliterator spliterator) {
        if (spliterator == null) {
            return null;
        }
        return spliterator instanceof C3100h ? ((C3100h) spliterator).f1183a : new C3098g(spliterator);
    }

    @Override // p034j$.util.InterfaceC2732s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return this.f1181a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ int characteristics() {
        return this.f1181a.characteristics();
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ long estimateSize() {
        return this.f1181a.estimateSize();
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1181a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ Comparator getComparator() {
        return this.f1181a.getComparator();
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1181a.getExactSizeIfKnown();
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1181a.hasCharacteristics(i);
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ InterfaceC2732s trySplit() {
        return m137a(this.f1181a.trySplit());
    }
}
