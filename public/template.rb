<%= f.fields_for :activities, Activity.new do |activity| %>
      <%=activity.label 'Activities' %>
      <p>
        <%=activity.collection_select(:activity_type_id, ActivityType.all, :id, :name, {:class =>'form-control'})%>
        <%= activity.text_field :duration %>
        <%= activity.hidden_field :manager_id, :value => 1 %>
        <%= activity.hidden_field :client_id, :value => 1 %>
        <%= activity.hidden_field :provider_id, :value => 1 %>
        <%= activity.hidden_field :activity_type_id, :value => 1 %>
      </p>
    <%end%>

     <p>
      <%= f.form_group :risk_level_start, label: { text: "Risk Level - Start " }, help: "" do %>
        <%= f.radio_button :risk_level_start, 0, label: "Low", checked: true, inline: true %>
        <%= f.radio_button :risk_level_start, 1, label: "Medium", inline: true %>
        <%= f.radio_button :risk_level_start, 2, label: "High", inline: true %>
      <% end %>
    </p>
    <p>
      <%= f.form_group :risk_level_end, label: { text: "Risk Level - End " }, help: "" do %>
        <%= f.radio_button :risk_level_end, 0, label: "Low", checked: true, inline: true %>
        <%= f.radio_button :risk_level_end, 1, label: "Medium", inline: true %>
        <%= f.radio_button :risk_level_end, 2, label: "High", inline: true %>
      <% end %>
    </p>


    <!-- <h2>Log in</h2>

<%= simple_form_for(resource, as: resource_name, url: session_path(resource_name)) do |f| %>
  <div class="form-inputs">
    <%= f.input :email, required: false, autofocus: true %>
    <%= f.input :password, required: false %>
    <%= f.input :remember_me, as: :boolean if devise_mapping.rememberable? %>
  </div>

  <div class="form-actions">
    <%= f.button :submit, "Log in" %>
  </div>
<% end %>

<%= render "devise/shared/links" %> -->