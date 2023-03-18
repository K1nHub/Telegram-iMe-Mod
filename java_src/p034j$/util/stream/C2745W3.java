package p034j$.util.stream;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2535I;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.C2583k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2584l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.W3 */
/* loaded from: classes2.dex */
public class C2745W3 extends AbstractC2760Z3 implements InterfaceC2584l {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2745W3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2745W3(int i) {
        super(i);
    }

    @Override // p034j$.util.stream.AbstractC2760Z3, java.lang.Iterable, p034j$.lang.InterfaceC2485e
    /* renamed from: B */
    public InterfaceC2611s.InterfaceC2613b spliterator() {
        return new C2740V3(this, 0, this.f929c, 0, this.f928b);
    }

    @Override // p034j$.util.function.InterfaceC2584l
    public void accept(int i) {
        m479A();
        int i2 = this.f928b;
        this.f928b = i2 + 1;
        ((int[]) this.f864e)[i2] = i;
    }

    @Override // p034j$.util.stream.AbstractC2760Z3
    /* renamed from: c */
    public Object mo478c(int i) {
        return new int[i];
    }

    @Override // p034j$.lang.InterfaceC2485e
    public void forEach(Consumer consumer) {
        if (consumer instanceof InterfaceC2584l) {
            mo291g((InterfaceC2584l) consumer);
        } else if (AbstractC2716Q4.f824a) {
            AbstractC2716Q4.m497a(getClass(), "{0} calling SpinedBuffer.OfInt.forEach(Consumer)");
            throw null;
        } else {
            spliterator().forEachRemaining(consumer);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2535I.m636g(spliterator());
    }

    @Override // p034j$.util.function.InterfaceC2584l
    /* renamed from: l */
    public InterfaceC2584l mo180l(InterfaceC2584l interfaceC2584l) {
        Objects.requireNonNull(interfaceC2584l);
        return new C2583k(this, interfaceC2584l);
    }

    @Override // p034j$.util.stream.AbstractC2760Z3
    /* renamed from: t */
    protected void mo477t(Object obj, int i, int i2, Object obj2) {
        int[] iArr = (int[]) obj;
        InterfaceC2584l interfaceC2584l = (InterfaceC2584l) obj2;
        while (i < i2) {
            interfaceC2584l.accept(iArr[i]);
            i++;
        }
    }

    public String toString() {
        int[] iArr = (int[]) mo292e();
        return iArr.length < 200 ? String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(iArr.length), Integer.valueOf(this.f929c), Arrays.toString(iArr)) : String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(iArr.length), Integer.valueOf(this.f929c), Arrays.toString(Arrays.copyOf(iArr, 200)));
    }

    @Override // p034j$.util.stream.AbstractC2760Z3
    /* renamed from: u */
    protected int mo476u(Object obj) {
        return ((int[]) obj).length;
    }

    @Override // p034j$.util.stream.AbstractC2760Z3
    /* renamed from: z */
    protected Object[] mo471z(int i) {
        return new int[i];
    }
}
