package p033j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.Consumer;
/* renamed from: j$.wrappers.g */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3274g implements InterfaceC2908s {

    /* renamed from: a */
    final /* synthetic */ Spliterator f1267a;

    private /* synthetic */ C3274g(Spliterator spliterator) {
        this.f1267a = spliterator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2908s m155a(Spliterator spliterator) {
        if (spliterator == null) {
            return null;
        }
        return spliterator instanceof C3276h ? ((C3276h) spliterator).f1269a : new C3274g(spliterator);
    }

    @Override // p033j$.util.InterfaceC2908s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return this.f1267a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ int characteristics() {
        return this.f1267a.characteristics();
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ long estimateSize() {
        return this.f1267a.estimateSize();
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1267a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ Comparator getComparator() {
        return this.f1267a.getComparator();
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1267a.getExactSizeIfKnown();
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1267a.hasCharacteristics(i);
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ InterfaceC2908s trySplit() {
        return m155a(this.f1267a.trySplit());
    }
}
