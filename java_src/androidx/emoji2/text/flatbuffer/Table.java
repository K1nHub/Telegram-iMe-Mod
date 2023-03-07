package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public class Table {

    /* renamed from: bb */
    protected ByteBuffer f42bb;
    protected int bb_pos;
    private int vtable_size;
    private int vtable_start;

    public Table() {
        Utf8.getDefault();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int __offset(int i) {
        if (i < this.vtable_size) {
            return this.f42bb.getShort(this.vtable_start + i);
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int __indirect(int i) {
        return i + this.f42bb.getInt(i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int __vector_len(int i) {
        int i2 = i + this.bb_pos;
        return this.f42bb.getInt(i2 + this.f42bb.getInt(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int __vector(int i) {
        int i2 = i + this.bb_pos;
        return i2 + this.f42bb.getInt(i2) + 4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void __reset(int i, ByteBuffer byteBuffer) {
        this.f42bb = byteBuffer;
        if (byteBuffer != null) {
            this.bb_pos = i;
            int i2 = i - byteBuffer.getInt(i);
            this.vtable_start = i2;
            this.vtable_size = this.f42bb.getShort(i2);
            return;
        }
        this.bb_pos = 0;
        this.vtable_start = 0;
        this.vtable_size = 0;
    }
}
