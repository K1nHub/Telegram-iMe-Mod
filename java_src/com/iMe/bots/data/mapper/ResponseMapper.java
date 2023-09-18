package com.iMe.bots.data.mapper;

import android.content.Context;
import com.iMe.bots.R$drawable;
import com.iMe.bots.R$string;
import com.iMe.bots.data.model.Response;
import com.iMe.bots.data.model.database.BotsDbModel;
import com.iMe.bots.data.repository.BotsRepository;
import com.iMe.bots.domain.model.SmartBotResponse;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ResponseMapper.kt */
/* loaded from: classes4.dex */
public final class ResponseMapper {
    private final String frequentAnswersTitle;
    private final Map<String, Integer> holidays;
    private final BotsRepository repository;

    public ResponseMapper(BotsRepository repository, Context context) {
        Map<String, Integer> mapOf;
        Intrinsics.checkNotNullParameter(repository, "repository");
        Intrinsics.checkNotNullParameter(context, "context");
        this.repository = repository;
        mapOf = MapsKt__MapsKt.mapOf(TuplesKt.m103to("23.02", Integer.valueOf(R$drawable.bot_avatar_23_02)), TuplesKt.m103to("08.03", Integer.valueOf(R$drawable.bot_avatar_08_03)), TuplesKt.m103to("01.04", Integer.valueOf(R$drawable.bot_avatar_01_04)), TuplesKt.m103to("12.04", Integer.valueOf(R$drawable.bot_avatar_12_04)), TuplesKt.m103to("28.04", Integer.valueOf(R$drawable.bot_avatar_28_04)), TuplesKt.m103to("01.05", Integer.valueOf(R$drawable.bot_avatar_01_05)), TuplesKt.m103to("09.05", Integer.valueOf(R$drawable.bot_avatar_09_05)));
        this.holidays = mapOf;
        String string = context.getString(R$string.bot_title_recent);
        Intrinsics.checkNotNullExpressionValue(string, "context.getString(R.string.bot_title_recent)");
        this.frequentAnswersTitle = string;
    }

    public final SmartBotResponse map(Response from) {
        String str;
        String str2;
        int intValue;
        String avatarOriginal;
        Intrinsics.checkNotNullParameter(from, "from");
        BotsDbModel botById = this.repository.getBotById(from.getBotId());
        if (Intrinsics.areEqual(from.getBotId(), "recent")) {
            str = from.getBotId();
            str2 = this.frequentAnswersTitle;
            intValue = R$drawable.ic_bots_recent;
        } else {
            str = (botById == null || (str = botById.getId()) == null) ? "" : "";
            str2 = (botById == null || (str2 = botById.getTitle()) == null) ? "" : "";
            Integer num = this.holidays.get(from.getTag());
            intValue = num != null ? num.intValue() : 0;
        }
        return new SmartBotResponse(str, str2, intValue, (botById == null || (avatarOriginal = botById.getAvatarOriginal()) == null) ? "" : avatarOriginal, from.getTag(), from.getGif(), from.getLink(), from.getAnswers());
    }
}
