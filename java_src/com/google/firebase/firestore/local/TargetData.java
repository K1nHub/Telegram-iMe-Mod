package com.google.firebase.firestore.local;

import com.google.firebase.firestore.core.Target;
import com.google.firebase.firestore.model.SnapshotVersion;
import com.google.firebase.firestore.util.Preconditions;
import com.google.protobuf.ByteString;
/* loaded from: classes4.dex */
public final class TargetData {
    private final SnapshotVersion lastLimboFreeSnapshotVersion;
    private final QueryPurpose purpose;
    private final ByteString resumeToken;
    private final long sequenceNumber;
    private final SnapshotVersion snapshotVersion;
    private final Target target;
    private final int targetId;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TargetData(Target target, int i, long j, QueryPurpose queryPurpose, SnapshotVersion snapshotVersion, SnapshotVersion snapshotVersion2, ByteString byteString) {
        this.target = (Target) Preconditions.checkNotNull(target);
        this.targetId = i;
        this.sequenceNumber = j;
        this.lastLimboFreeSnapshotVersion = snapshotVersion2;
        this.purpose = queryPurpose;
        this.snapshotVersion = (SnapshotVersion) Preconditions.checkNotNull(snapshotVersion);
        this.resumeToken = (ByteString) Preconditions.checkNotNull(byteString);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TargetData(com.google.firebase.firestore.core.Target r10, int r11, long r12, com.google.firebase.firestore.local.QueryPurpose r14) {
        /*
            r9 = this;
            com.google.firebase.firestore.model.SnapshotVersion r7 = com.google.firebase.firestore.model.SnapshotVersion.NONE
            com.google.protobuf.ByteString r8 = com.google.firebase.firestore.remote.WatchStream.EMPTY_RESUME_TOKEN
            r0 = r9
            r1 = r10
            r2 = r11
            r3 = r12
            r5 = r14
            r6 = r7
            r0.<init>(r1, r2, r3, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.firestore.local.TargetData.<init>(com.google.firebase.firestore.core.Target, int, long, com.google.firebase.firestore.local.QueryPurpose):void");
    }

    public TargetData withSequenceNumber(long j) {
        return new TargetData(this.target, this.targetId, j, this.purpose, this.snapshotVersion, this.lastLimboFreeSnapshotVersion, this.resumeToken);
    }

    public TargetData withResumeToken(ByteString byteString, SnapshotVersion snapshotVersion) {
        return new TargetData(this.target, this.targetId, this.sequenceNumber, this.purpose, snapshotVersion, this.lastLimboFreeSnapshotVersion, byteString);
    }

    public TargetData withLastLimboFreeSnapshotVersion(SnapshotVersion snapshotVersion) {
        return new TargetData(this.target, this.targetId, this.sequenceNumber, this.purpose, this.snapshotVersion, snapshotVersion, this.resumeToken);
    }

    public Target getTarget() {
        return this.target;
    }

    public int getTargetId() {
        return this.targetId;
    }

    public long getSequenceNumber() {
        return this.sequenceNumber;
    }

    public QueryPurpose getPurpose() {
        return this.purpose;
    }

    public SnapshotVersion getSnapshotVersion() {
        return this.snapshotVersion;
    }

    public ByteString getResumeToken() {
        return this.resumeToken;
    }

    public SnapshotVersion getLastLimboFreeSnapshotVersion() {
        return this.lastLimboFreeSnapshotVersion;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || TargetData.class != obj.getClass()) {
            return false;
        }
        TargetData targetData = (TargetData) obj;
        return this.target.equals(targetData.target) && this.targetId == targetData.targetId && this.sequenceNumber == targetData.sequenceNumber && this.purpose.equals(targetData.purpose) && this.snapshotVersion.equals(targetData.snapshotVersion) && this.lastLimboFreeSnapshotVersion.equals(targetData.lastLimboFreeSnapshotVersion) && this.resumeToken.equals(targetData.resumeToken);
    }

    public int hashCode() {
        return (((((((((((this.target.hashCode() * 31) + this.targetId) * 31) + ((int) this.sequenceNumber)) * 31) + this.purpose.hashCode()) * 31) + this.snapshotVersion.hashCode()) * 31) + this.lastLimboFreeSnapshotVersion.hashCode()) * 31) + this.resumeToken.hashCode();
    }

    public String toString() {
        return "TargetData{target=" + this.target + ", targetId=" + this.targetId + ", sequenceNumber=" + this.sequenceNumber + ", purpose=" + this.purpose + ", snapshotVersion=" + this.snapshotVersion + ", lastLimboFreeSnapshotVersion=" + this.lastLimboFreeSnapshotVersion + ", resumeToken=" + this.resumeToken + '}';
    }
}
