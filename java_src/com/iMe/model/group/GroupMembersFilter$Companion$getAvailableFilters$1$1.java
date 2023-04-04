package com.iMe.model.group;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: GroupMembersFilter.kt */
/* loaded from: classes3.dex */
final class GroupMembersFilter$Companion$getAvailableFilters$1$1 extends Lambda implements Function1<GroupMembersFilter, Boolean> {
    final /* synthetic */ boolean $isAdmin;
    final /* synthetic */ boolean $isChannel;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GroupMembersFilter$Companion$getAvailableFilters$1$1(boolean z, boolean z2) {
        super(1);
        this.$isAdmin = z;
        this.$isChannel = z2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Boolean invoke(GroupMembersFilter it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Boolean.valueOf((it == GroupMembersFilter.BLOCKED || it == GroupMembersFilter.RESTRICTED) && !(this.$isAdmin && this.$isChannel));
    }
}
