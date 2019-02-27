<br>
<% if $IncludeFormTag %>
    <form $AttributesHTML>
<% end_if %>

<% if $Fields.dataFieldByName('Email') %>
    <div class="field">
        <label class="label" for="{$Fields.dataFieldByName('Email').ID}">Username</label>
        <div class="control has-icons-left">
            <input type="text" name="{$Fields.dataFieldByName('Email').Title}" id="{$Fields.dataFieldByName('Email').ID}" required="required" aria-required="true" class="input is-medium">
            <span class="icon is-small is-left">
                <i class="fas fa-user"></i>
            </span>
        </div>
    </div>
<% end_if %>

<% if $Fields.dataFieldByName('Password') %>
        <div class="field">
            <label class="label" for="{$Fields.dataFieldByName('Password').ID}">Password</label>
            <div class="control has-icons-left">
                <input type="password" name="{$Fields.dataFieldByName('Password').Title}" id="{$Fields.dataFieldByName('Password').ID}" required="required" aria-required="true" class="input is-medium">
                <span class="icon is-small is-left">
                    <i class="fas fa-key"></i>
                </span>
            </div>
        </div>
<% end_if %>

<% if $Fields.dataFieldByName('Remember') %>
    <div class="field">
        <div class="control">
            <label class="checkbox">
                <input type="checkbox" name="$Fields.dataFieldByName('Remember').Title" id="$Fields.dataFieldByName('Remember').ID">
                Keep me signed in
            </label>
        </div>
    </div>
<% end_if %>
<br>
<% loop $Actions %>
    <div class="field is-grouped is-grouped-centered">
        <div class="control">
            {$Field}
        </div>
    </div>
<% end_loop %>
</br>

<% loop $Fields.HiddenFields %>
    {$Field}
<% end_loop %>

<% if $IncludeFormTag %>
    </form>
<% end_if %>
