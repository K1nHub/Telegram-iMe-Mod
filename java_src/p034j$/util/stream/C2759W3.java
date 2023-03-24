package p034j$.util.stream;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2549I;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.C2597k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2598l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.W3 */
/* loaded from: classes2.dex */
public class C2759W3 extends AbstractC2774Z3 implements InterfaceC2598l {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2759W3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2759W3(int i) {
        super(i);
    }

    @Override // p034j$.util.stream.AbstractC2774Z3, java.lang.Iterable, p034j$.lang.InterfaceC2499e
    /* renamed from: B */
    public InterfaceC2625s.InterfaceC2627b spliterator() {
        return new C2754V3(this, 0, this.f930c, 0, this.f929b);
    }

    @Override // p034j$.util.function.InterfaceC2598l
    public void accept(int i) {
        m478A();
        int i2 = this.f929b;
        this.f929b = i2 + 1;
        ((int[]) this.f865e)[i2] = i;
    }

    @Override // p034j$.util.stream.AbstractC2774Z3
    /* renamed from: c */
    public Object mo477c(int i) {
        return new int[i];
    }

    @Override // p034j$.lang.InterfaceC2499e
    public void forEach(Consumer consumer) {
        if (consumer instanceof InterfaceC2598l) {
            mo290g((InterfaceC2598l) consumer);
        } else if (AbstractC2730Q4.f825a) {
            AbstractC2730Q4.m496a(getClass(), "{0} calling SpinedBuffer.OfInt.forEach(Consumer)");
            throw null;
        } else {
            spliterator().forEachRemaining(consumer);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2549I.m635g(spliterator());
    }

    @Override // p034j$.util.function.InterfaceC2598l
    /* renamed from: l */
    public InterfaceC2598l mo179l(InterfaceC2598l interfaceC2598l) {
        Objects.requireNonNull(interfaceC2598l);
        return new C2597k(this, interfaceC2598l);
    }

    @Override // p034j$.util.stream.AbstractC2774Z3
    /* renamed from: t */
    protected void mo476t(Object obj, int i, int i2, Object obj2) {
        int[] iArr = (int[]) obj;
        InterfaceC2598l interfaceC2598l = (InterfaceC2598l) obj2;
        while (i < i2) {
            interfaceC2598l.accept(iArr[i]);
            i++;
        }
    }

    public String toString() {
        int[] iArr = (int[]) mo291e();
        return iArr.length < 200 ? String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(iArr.length), Integer.valueOf(this.f930c), Arrays.toString(iArr)) : String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(iArr.length), Integer.valueOf(this.f930c), Arrays.toString(Arrays.copyOf(iArr, 200)));
    }

    @Override // p034j$.util.stream.AbstractC2774Z3
    /* renamed from: u */
    protected int mo475u(Object obj) {
        return ((int[]) obj).length;
    }

    @Override // p034j$.util.stream.AbstractC2774Z3
    /* renamed from: z */
    protected Object[] mo470z(int i) {
        return new int[i];
    }
}
