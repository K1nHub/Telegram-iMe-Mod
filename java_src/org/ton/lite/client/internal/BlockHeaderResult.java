package org.ton.lite.client.internal;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
import org.ton.bitstring.BitString;
/* compiled from: BlockHeaderResult.kt */
/* loaded from: classes6.dex */
public final class BlockHeaderResult {

    /* renamed from: lt */
    private final long f2102lt;
    private final BitString stateHash;
    private final int time;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BlockHeaderResult) {
            BlockHeaderResult blockHeaderResult = (BlockHeaderResult) obj;
            return this.time == blockHeaderResult.time && this.f2102lt == blockHeaderResult.f2102lt && Intrinsics.areEqual(this.stateHash, blockHeaderResult.stateHash);
        }
        return false;
    }

    public int hashCode() {
        int m1018m = ((this.time * 31) + ProfileData$$ExternalSyntheticBackport0.m1018m(this.f2102lt)) * 31;
        BitString bitString = this.stateHash;
        return m1018m + (bitString == null ? 0 : bitString.hashCode());
    }

    public String toString() {
        return "BlockHeaderResult(time=" + this.time + ", lt=" + this.f2102lt + ", stateHash=" + this.stateHash + ')';
    }

    public BlockHeaderResult(int i, long j, BitString bitString) {
        this.time = i;
        this.f2102lt = j;
        this.stateHash = bitString;
    }

    public final BitString getStateHash() {
        return this.stateHash;
    }
}
